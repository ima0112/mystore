part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  const factory SignUpFormEvent.started() = _Started;
  const factory SignUpFormEvent.formSubmitted({
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    required String phoneNumber,
    required String username,
    required bool privacyAccepted,
  }) = _FormSubmitted;
}
