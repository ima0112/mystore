import 'package:formz/formz.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/inputs/user_inputs.dart';
import 'package:mystore/common/domain/usecases/usecase.dart';

@lazySingleton
class FormValidationUseCase implements UseCase<bool, FormValidationParams> {
  @override
  Future<(Failure?, bool?)> call(params) async {
    final isMandatoryValid = Formz.validate([params.email, params.password]);

    final isOptionalValid = Formz.validate([
      if (params.firstName != null) params.firstName!,
      if (params.lastName != null) params.lastName!,
      if (params.username != null) params.username!,
      if (params.phoneNumber != null) params.phoneNumber!,
    ]);

    if (isMandatoryValid && isOptionalValid) {
      return (null, true);
    } else {
      return (InvalidFormFailure('Invalid form'), false);
    }
  }
}

class FormValidationParams {
  final Email email;
  final Password password;
  final FirstName? firstName;
  final LastName? lastName;
  final Username? username;
  final PhoneNumber? phoneNumber;

  FormValidationParams({
    required this.email,
    required this.password,
    this.firstName,
    this.lastName,
    this.username,
    this.phoneNumber,
  });
}
