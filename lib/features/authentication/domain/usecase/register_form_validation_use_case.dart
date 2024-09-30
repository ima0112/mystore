import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/inputs/user_inputs.dart';
import 'package:mystore/core/usecases/usecase.dart';

@lazySingleton
class RegisterFormValidationUseCase
    implements UseCase<bool, RegisterFormValidationParams> {
  @override
  Future<(Failure?, bool?)> call(params) async {
    final formStatus = Formz.validate([
      params.firstName,
      params.lastName,
      params.username,
      params.email,
      params.phoneNumber,
      params.password,
    ]);

    if (formStatus) {
      return (null, true);
    } else {
      return (InvalidFormFailure('Invalid form'), false);
    }
  }
}

class RegisterFormValidationParams {
  final Email email;
  final Password password;
  final FirstName firstName;
  final LastName lastName;
  final Username username;
  final PhoneNumber phoneNumber;

  RegisterFormValidationParams({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.phoneNumber,
  });
}
