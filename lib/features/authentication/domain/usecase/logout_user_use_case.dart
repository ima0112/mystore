import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/usecases/usecase.dart';
import 'package:mystore/features/authentication/domain/repositories/authentication_repository.dart';

@lazySingleton
class LogoutUserUseCase implements UseCase<void, NoParams> {
  final AuthenticationRepository repository;

  LogoutUserUseCase({required this.repository});

  @override
  Future<(Failure?, void)> call(NoParams params) async {
    return await repository.logOut();
  }
}
