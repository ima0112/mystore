import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/usecases/usecase.dart';
import 'package:mystore/features/authentication/domain/entities/user_entity.dart';
import 'package:mystore/features/authentication/domain/repositories/authentication_repository.dart';

@injectable
class SignInWithEmailAndPasswordUseCase
    implements UseCase<UserEntity?, SignInWithEmailAndPasswordParams> {
  final AuthenticationRepository repository;

  SignInWithEmailAndPasswordUseCase(this.repository);

  @override
  Future<(Failure?, UserEntity?)> call(params) async {
    return await repository.signInWithEmailAndPassword(
      email: params.email,
      password: params.password,
      rememberMe: params.rememberMe,
    );
  }
}

class SignInWithEmailAndPasswordParams {
  final String email;
  final String password;
  final bool rememberMe;

  SignInWithEmailAndPasswordParams({
    required this.email,
    required this.password,
    required this.rememberMe,
  });
}
