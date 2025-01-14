import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/usecases/usecase.dart';
import 'package:mystore/features/authentication/domain/repositories/authentication_repository.dart';

@lazySingleton
class SendEmailVerificationUseCase implements UseCase<void, NoParams> {
  final AuthenticationRepository repository;

  SendEmailVerificationUseCase(this.repository);

  @override
  Future<(Failure?, void)> call(_) async {
    return await repository.sendEmailVerification();
  }
}
