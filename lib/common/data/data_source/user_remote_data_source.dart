import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/common/data/models/user_model.dart';

abstract class UserRemoteDataSource {
  Future<void> saveUser(UserModel user);
  Future<UserModel?> getUser({required String userId});
  Future<void> updateUser(UserModel user);
}

@Injectable(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final FirebaseFirestore _firestore;

  UserRemoteDataSourceImpl(this._firestore);

  @override
  Future<UserModel?> getUser({required String userId}) async {
    // TODO: implement getUser
    throw UnimplementedError();
  }

  @override
  Future<void> saveUser(UserModel user) async {
    // TODO: implement saveUser
    throw UnimplementedError();
  }

  @override
  Future<void> updateUser(UserModel user) async {
    // TODO: implement updateUser
    throw UnimplementedError();
  }
}
