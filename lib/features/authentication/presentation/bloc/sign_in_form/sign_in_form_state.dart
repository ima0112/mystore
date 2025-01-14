part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  const factory SignInFormState({
    @Default(Email.pure()) Email email,
    @Default(Password.pure()) Password password,
    bool? isFormValid,
  }) = _SignInFormState;
}
