import 'package:mystore/common/domain/entities/user_entity.dart';

abstract class UserRepository {
  Future<void> saveUser(UserEntity user);
  Future<UserEntity?> getUser({required String userId});
  Future<void> updateUser(UserEntity user);
}
