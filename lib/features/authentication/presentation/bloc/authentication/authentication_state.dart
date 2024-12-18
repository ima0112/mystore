part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.processing() = _Processing;
  const factory AuthenticationState.error({required String message}) = _Error;
  const factory AuthenticationState.success(
      {required String message, required String email}) = _Sucess;

  const factory AuthenticationState.resendCooldown(int secondsRemaining) =
      _ResendCooldown;

  const factory AuthenticationState.emailVerified() = _EmailVerified;
  const factory AuthenticationState.emailVerificationSent() =
      _EmailVerificationSent;
  const factory AuthenticationState.loggedIn() = _LoggedIn;
  const factory AuthenticationState.loggedOut() = _LoggedOut;
  const factory AuthenticationState.loggingOut() = _LoggingOut;
  const factory AuthenticationState.passwordResetSent(
      {required String message, required String email}) = _PasswordResetSent;
}
