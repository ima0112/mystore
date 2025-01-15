import 'package:firebase_auth/firebase_auth.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/core/error/failures.dart';

abstract class UserRepository {
  Future<(Failure?, UserEntity?)> createAndSaveUser(
      UserCredential? userCredential);
  Future<(Failure?, UserEntity?)> saveUser(UserEntity user);
  Future<(Failure?, UserEntity?)> getUser();
  Future<(Failure?, void)> updateUser(UserEntity user);
  Future<(Failure?, User?)> getCurrentUser();
}
