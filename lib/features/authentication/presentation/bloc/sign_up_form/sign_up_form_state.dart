part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  const factory SignUpFormState({
    @Default(FirstName.pure()) FirstName firstName,
    @Default(LastName.pure()) LastName lastName,
    @Default(Username.pure()) Username username,
    @Default(Email.pure()) Email email,
    @Default(PhoneNumber.pure()) PhoneNumber phoneNumber,
    @Default(Password.pure()) Password password,
    @Default(true) bool isValidated,
  }) = _SignUpFormState;
}
