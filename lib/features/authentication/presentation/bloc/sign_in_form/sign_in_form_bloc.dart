import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/core/inputs/user_inputs.dart';
import 'package:mystore/features/authentication/domain/usecase/register_form_validation_use_case.dart';
import 'package:mystore/features/authentication/domain/usecase/remember_me_use_case.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

@injectable
class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  final FormValidationUseCase formValidationUseCase;
  final RememberMeUseCase rememberMeUseCase;

  SignInFormBloc(this.formValidationUseCase, this.rememberMeUseCase)
      : super(const SignInFormState()) {
    on<SignInFormEvent>((event, emit) async {
      final credentials = await rememberMeUseCase.getSavedCredentials();

      if (credentials != null) {
        emit(
          state.copyWith(
            email: Email.dirty(credentials.email),
            password: Password.dirty(credentials.password ?? ''),
          ),
        );
      }

      await event.when(
        started: () {},
        formSubmitted: (email, password) async {
          /// Validates the sign-in form using the provided parameters and emits an error state if validation fails.
          ///
          /// This method calls the `signInFormValidationUseCase` with the given parameters:
          /// - `email`: The email address to validate.
          /// - `password`: The password to validate.
          ///
          /// If the form validation fails (`formStatus.$2` is `false`), it emits an `AuthenticationState.error`
          /// with the validation error message (`formStatus.$1!.message`).
          ///
          /// Returns immediately after emitting the error state if validation fails.
          final mail = Email.dirty(email);
          final pass = Password.dirty(password);

          final formStatus = await formValidationUseCase.call(
            FormValidationParams(
              email: mail,
              password: pass,
            ),
          );

          emit(
            state.copyWith(
              email: mail,
              password: pass,
              isFormValid: formStatus.$2,
            ),
          );
        },
      );
    });
  }
}
