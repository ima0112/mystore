import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/common/domain/usecases/usecase.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/features/authentication/domain/repositories/authentication_repository.dart';

@injectable
class RememberMeUseCase implements UseCase<void, RememberMeParams> {
  final AuthenticationRepository repository;

  RememberMeUseCase({required this.repository});

  @override
  Future<(Failure?, void)> call(RememberMeParams params) async {
    return await repository.saveCredentials(
        email: params.email, password: params.password);
  }

  Future<UserAuthCredentials?> getSavedCredentials() async {
    return await repository.getCredentials();
  }

  Future<void> clearSavedCredentials() async {
    await repository.clearCredentials();
  }
}

class RememberMeParams {
  final String email;
  final String password;

  RememberMeParams({required this.email, required this.password});
}
