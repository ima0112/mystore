import 'package:firebase_auth/firebase_auth.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/features/authentication/domain/entities/user_entity.dart';

abstract class AuthenticationRepository {
  Future<(Failure?, UserEntity?)> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required UserEntity user,
  });

  Future<(Failure?, void)> sendEmailVerification();

  Future<(Failure?, bool)> isEmailVerified();

  Future<(Failure?, void)> logOut();

  Future<(Failure?, User?)> getCurrentUser();
}
