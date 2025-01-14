part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.loading() = _Loading;
  const factory AuthenticationState.success(
      {required String message, required String email}) = _Sucess;
  const factory AuthenticationState.emailVerified() = _EmailVerified;
  const factory AuthenticationState.emailVerificationSent() =
      _EmailVerificationSent;
  const factory AuthenticationState.loggedOut() = _LoggedOut;
  const factory AuthenticationState.error({required String message}) = _Error;
  const factory AuthenticationState.resendCooldown(int secondsRemaining) =
      _ResendCooldown;
  const factory AuthenticationState.loggedIn() = _LoggedIn;
}
