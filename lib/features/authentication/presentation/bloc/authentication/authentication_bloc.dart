import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:mystore/core/usecases/network/is_connected.dart';
import 'package:mystore/core/usecases/usecase.dart';
import 'package:mystore/features/authentication/domain/entities/user_entity.dart';
import 'package:mystore/features/authentication/domain/usecase/register_user_use_case.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IsConnectedUseCase isConnectedUseCase;
  final RegisterUserUseCase registerUserUseCase;

  AuthenticationBloc(
    this.isConnectedUseCase,
    this.registerUserUseCase,
  ) : super(const _Initial()) {
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
          emit(const AuthenticationState.loading());

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
                password: password,
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
            const AuthenticationState.success(
              message: 'Verify your email to continue.',
            ),
          );
        },
      );
    });
  }
}
