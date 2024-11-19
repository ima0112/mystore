import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:mystore/core/inputs/user_inputs.dart';
import 'package:mystore/features/authentication/domain/usecase/register_form_validation_use_case.dart';

part 'sign_up_form_event.dart';
part 'sign_up_form_state.dart';
part 'sign_up_form_bloc.freezed.dart';

@injectable
class SignUpFormBloc extends Bloc<SignUpFormEvent, SignUpFormState> {
  final RegisterFormValidationUseCase registerFormValidationUseCase;

  SignUpFormBloc(this.registerFormValidationUseCase)
      : super(const SignUpFormState()) {
    on<SignUpFormEvent>((event, emit) async {
      await event.when(
        started: () {},
        formSubmitted: (firstName, lastName, email, password, phoneNumber,
            username, privacy) async {
          /// Validates the registration form using the provided parameters and emits an error state if validation fails.
          ///
          /// This method calls the `registerFormValidationUseCase` with the given parameters:
          /// - `email`: The email address to validate.
          /// - `password`: The password to validate.
          /// - `firstName`: The first name to validate.
          /// - `lastName`: The last name to validate.
          /// - `username`: The username to validate.
          /// - `phoneNumber`: The phone number to validate.
          ///
          /// If the form validation fails (`formStatus.$2` is `false`), it emits an `AuthenticationState.error`
          /// with the validation error message (`formStatus.$1!.message`).
          ///
          /// Returns immediately after emitting the error state if validation fails.
          final name = FirstName.dirty(firstName);
          final last = LastName.dirty(lastName);
          final user = Username.dirty(username);
          final mail = Email.dirty(email);
          final phone = PhoneNumber.dirty(phoneNumber);
          final pass = Password.dirty(password);

          final formStatus = await registerFormValidationUseCase.call(
            RegisterFormValidationParams(
              email: mail,
              password: pass,
              firstName: name,
              lastName: last,
              username: user,
              phoneNumber: phone,
            ),
          );

          emit(
            state.copyWith(
              firstName: name,
              lastName: last,
              username: user,
              email: mail,
              phoneNumber: phone,
              password: pass,
            ),
          );

          if (formStatus.$2 == true) {
            if (privacy == false) {
              emit(state.copyWith(
                isPrivacyAccepted: privacy,
                privacyErrorTriggered: true,
              ));

              emit(state.copyWith(privacyErrorTriggered: false));
            } else {
              emit(state.copyWith(isFormValid: true));
            }
          }
        },
      );
    });
  }
}
