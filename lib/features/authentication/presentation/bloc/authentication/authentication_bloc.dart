import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:mystore/core/usecases/network/is_connected.dart';
import 'package:mystore/core/usecases/usecase.dart';
import 'package:mystore/features/authentication/domain/entities/user_entity.dart';
import 'package:mystore/features/authentication/domain/usecase/check_user_status_use_case.dart';
import 'package:mystore/features/authentication/domain/usecase/forget_password_use_case.dart';
import 'package:mystore/features/authentication/domain/usecase/logout_user_use_case.dart';
import 'package:mystore/features/authentication/domain/usecase/register_user_use_case.dart';
import 'package:mystore/features/authentication/domain/usecase/remember_me_use_case.dart';
import 'package:mystore/features/authentication/domain/usecase/send_email_verification_use_case.dart';
import 'package:mystore/features/authentication/domain/usecase/sign_in.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState>
    with WidgetsBindingObserver {
  final SignIn signIn;
  final LogoutUserUseCase logoutUserUseCase;
  final RememberMeUseCase rememberMeUseCase;
  final IsConnectedUseCase isConnectedUseCase;
  final RegisterUserUseCase registerUserUseCase;
  final ForgetPasswordUseCase forgetPasswordUseCase;
  final CheckUserStatusUseCase checkUserStatusUseCase;
  final SendEmailVerificationUseCase sendEmailVerificationUseCase;

  Timer? _cooldownTimer;
  Timer? _timer;

  static const int _cooldownDuration = 60;
  DateTime? _cooldownStart;

  /// Sets a timer for automatic redirection.
  ///
  /// This method initializes a timer that triggers an automatic redirection
  /// after a specified duration. It is typically used to navigate the user
  /// to a different screen or perform a specific action after a delay.
  setTimerForAutoRedirect() {
    _timer?.cancel();
    _timer = Timer(const Duration(seconds: 1), () {
      add(const AuthenticationEvent.checkEmailVerification());
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.paused) {
      _timer?.cancel();
      _cooldownTimer?.cancel();
    }
  }

  @override
  Future<void> close() {
    WidgetsBinding.instance.removeObserver(this);
    _timer?.cancel();
    _cooldownTimer?.cancel();
    return super.close();
  }

  AuthenticationBloc(
    this.logoutUserUseCase,
    this.isConnectedUseCase,
    this.registerUserUseCase,
    this.checkUserStatusUseCase,
    this.sendEmailVerificationUseCase,
    this.signIn,
    this.rememberMeUseCase,
    this.forgetPasswordUseCase,
  ) : super(const _Initial()) {
    WidgetsBinding.instance.addObserver(this);

    on<AuthenticationEvent>((event, emit) async {
      await event.when(
        started: () {},
        signup: (
          firstName,
          lastName,
          email,
          password,
          phoneNumber,
          username,
        ) async {
          emit(const AuthenticationState.initial());

          /// Checks the internet connection status using `isConnectedUseCase`.
          /// If there is no internet connection, emits an error state with the
          /// corresponding message from `internetStatus`.
          ///
          /// Uses:
          /// - `isConnectedUseCase`: A use case to check internet connectivity.
          /// - `NoParams()`: A parameter indicating no additional parameters are needed.
          ///
          /// Emits:
          /// - `AuthenticationState.error`: If there is no internet connection, with
          ///   the error message from `internetStatus`.
          final internetStatus =
              await isConnectedUseCase.call(const NoParams());
          if (internetStatus.$2 == false) {
            emit(
              AuthenticationState.error(
                message: internetStatus.$1!.message,
              ),
            );
            return;
          }

          /// Registers a new user using the provided `registerUserUseCase` and emits an error state if registration fails.
          ///
          /// The `registerUserUseCase` is called with `RegisterUserParams` containing the user's email, password, and a `UserEntity`
          /// with additional user details such as first name, last name, username, and phone number.
          ///
          /// If the registration fails (i.e., `registerUser.$1` is not null), an error state is emitted with the error message.
          final registerUser = await registerUserUseCase.call(
            RegisterUserParams(
              email: email,
              password: password,
              user: UserEntity(
                firstName: firstName,
                lastName: lastName,
                email: email,
                username: username,
                phoneNumber: phoneNumber,
              ),
            ),
          );

          if (registerUser.$1 != null) {
            emit(
              AuthenticationState.error(
                message: registerUser.$1!.message,
              ),
            );
            return;
          }

          emit(
            AuthenticationState.success(
              message: 'Verify your email to continue.',
              email: email,
            ),
          );
        },
        signinWithEmailAndPassword: (email, password, rememberMe) async {
          emit(const AuthenticationState.loading());

          final result = await signIn(
            SignInWithEmailAndPasswordParams(
              email: email,
              password: password,
              rememberMe: rememberMe,
            ),
          );

          if (result.$1 != null) {
            emit(
              AuthenticationState.error(
                message: result.$1!.message,
              ),
            );
            return;
          }

          if (rememberMe) {
            await rememberMeUseCase(
                RmemeberMeParams(email: email, password: password));
          } else {
            await rememberMeUseCase.clearSavedCredentials();
          }

          emit(const AuthenticationState.loggedIn());
        },
        verifyEmail: (String email) async {
          emit(const AuthenticationState.initial());

          setTimerForAutoRedirect();

          if (_cooldownStart == null) {
            _startCooldownTimer();
            final resp = await sendEmailVerificationUseCase(const NoParams());

            if (resp.$1 != null) {
              emit(
                AuthenticationState.error(message: resp.$1!.message),
              );
              return;
            } else {
              emit(const AuthenticationState.emailVerificationSent());
            }
          }
        },
        checkEmailVerification: () async {
          emit(const AuthenticationState.loading());

          final userStatus =
              await checkUserStatusUseCase.call(const NoParams());

          if (userStatus.$1 != null) {
            emit(
              AuthenticationState.error(message: userStatus.$1!.message),
            );
            return;
          }

          if (userStatus.$2 == UserStatus.emailVerified) {
            emit(const AuthenticationState.emailVerified());
            _timer?.cancel();
            return;
          } else {
            emit(const AuthenticationState.emailVerificationSent());
          }
        },
        logout: () async {
          final logout = await logoutUserUseCase(const NoParams());

          if (logout.$1 != null) {
            emit(
              AuthenticationState.error(message: logout.$1!.message),
            );
            return;
          } else {
            emit(const AuthenticationState.loggedOut());
          }
        },
        restore: () {
          _restoreCooldown();
          setTimerForAutoRedirect();
        },
        signInWithGoogle: () async {
          emit(const AuthenticationState.loading());

          final result = await signIn.withGoogle();

          if (result.$1 != null) {
            emit(
              AuthenticationState.error(
                message: result.$1!.message,
              ),
            );
            return;
          }

          emit(const AuthenticationState.loggedIn());
        },
        resetPassword: (String email) async {
          emit(const AuthenticationState.loading());

          final result = await forgetPasswordUseCase(email);

          if (result.$1 != null) {
            emit(
              AuthenticationState.error(
                message: result.$1!.message,
              ),
            );
            return;
          }

          emit(const AuthenticationState.passwordResetSent());
        },
      );
    });
  }

  void _startCooldownTimer() {
    _cooldownStart = DateTime.now();
    emitCooldownDuration(_cooldownDuration);

    _cooldownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      final remainingSeconds = _cooldownDuration -
          DateTime.now().difference(_cooldownStart!).inSeconds;

      if (remainingSeconds > 0) {
        emitCooldownDuration(remainingSeconds);
      } else {
        _cooldownTimer?.cancel();
        _cooldownStart = null;
        emit(const AuthenticationState.resendCooldown(0));
      }
    });
  }

  void _restoreCooldown() {
    if (_cooldownStart != null) {
      final elapsed = DateTime.now().difference(_cooldownStart!).inSeconds;
      final remaining = _cooldownDuration - elapsed;

      if (remaining > 0) {
        emitCooldownDuration(remaining);
        _cooldownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
          final updatedRemaining = remaining - timer.tick;
          if (updatedRemaining > 0) {
            emitCooldownDuration(updatedRemaining);
          } else {
            _cooldownTimer?.cancel();
            _cooldownStart = null;
            emit(const AuthenticationState.resendCooldown(0));
          }
        });
      } else {
        _cooldownStart = null;
        emit(const AuthenticationState.resendCooldown(0));
      }
    }
  }

  void emitCooldownDuration(int seconds) {
    emit(AuthenticationState.resendCooldown(seconds));
  }
}
