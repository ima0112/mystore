import 'package:mystore/core/error/failures.dart';
import 'package:mystore/features/authentication/domain/entities/user_entity.dart';

abstract class AuthenticationRepository {
  Future<(Failure?, UserEntity?)> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required UserEntity user,
  });
}
