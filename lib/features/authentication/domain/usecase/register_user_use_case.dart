import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/usecases/usecase.dart';
import 'package:mystore/features/authentication/domain/entities/user_entity.dart';
import 'package:mystore/features/authentication/domain/repositories/authentication_repository.dart';

@lazySingleton
class RegisterUserUseCase implements UseCase<UserEntity, RegisterUserParams> {
  final AuthenticationRepository repository;

  RegisterUserUseCase(this.repository);

  @override
  Future<(Failure?, UserEntity?)> call(params) async {
    return await repository.signUpWithEmailAndPassword(
      email: params.email,
      password: params.password,
      user: params.user,
    );
  }
}

class RegisterUserParams {
  final String email;
  final String password;
  final UserEntity user;

  RegisterUserParams(
      {required this.email, required this.password, required this.user});
}
