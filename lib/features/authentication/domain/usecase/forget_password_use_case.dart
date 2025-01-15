import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/common/domain/usecases/usecase.dart';
import 'package:mystore/features/authentication/domain/repositories/authentication_repository.dart';

@injectable
class ForgetPasswordUseCase implements UseCase<void, String> {
  final AuthenticationRepository repository;

  ForgetPasswordUseCase(this.repository);

  @override
  Future<(Failure?, void)> call(String email) async {
    return await repository.sendPasswordResetEmail(email);
  }
}
