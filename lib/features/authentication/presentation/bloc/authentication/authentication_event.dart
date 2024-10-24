part of 'authentication_bloc.dart';

@freezed
class AuthenticationEvent with _$AuthenticationEvent {

  const factory AuthenticationEvent.started() = _Started;

  const factory AuthenticationEvent.signup({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String phoneNumber,
    required String username,
  }) = _SignUp;
}
