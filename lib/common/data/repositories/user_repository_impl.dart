import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/common/domain/repositories/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final FirebaseFirestore _firestore;

  @override
  Future<UserEntity?> getUser({required String userId}) {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> saveUser(UserEntity user) {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser(UserEntity user) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
