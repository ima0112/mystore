import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/common/data/data_source/user/user_local_data_source.dart';
import 'package:mystore/common/data/data_source/user/user_remote_data_source.dart';
import 'package:mystore/common/data/models/user_model.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/common/domain/repositories/user_repository.dart';
import 'package:mystore/core/error/exceptions.dart';
import 'package:mystore/core/error/failures.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserLocalDataSource _userLocalDataSource;
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepositoryImpl(this._userLocalDataSource, this._userRemoteDataSource);

  @override
  Future<(Failure?, UserEntity?)> createAndSaveUser(
      UserCredential? userCredential) async {
    try {
      final user =
          await _userRemoteDataSource.createAndSaveUser(userCredential);
      return (null, user);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    }
  }

  @override
  Future<(Failure?, UserEntity?)> getUser() async {
    try {
      final user = await _userLocalDataSource.getUser();
      return (null, user);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    }
  }

  @override
  Future<(Failure?, UserEntity?)> saveUser(UserEntity user) async {
    try {
      final model = UserModel.fromEntity(user);

      await _userRemoteDataSource.saveUser(UserModel.fromEntity(model));
      _userLocalDataSource.cacheUser(model.toIsarUserModel());

      return (null, user);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    }
  }

  @override
  Future<(Failure?, void)> updateUser(UserEntity user) async {
    try {
      final model = UserModel.fromEntity(user);

      await _userRemoteDataSource.updateUser(UserModel.fromEntity(model));
      _userLocalDataSource.cacheUser(model.toIsarUserModel());

      return (null, null);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    }
  }

  @override
  Future<(Failure?, User?)> getCurrentUser() async {
    try {
      final user = _userRemoteDataSource.currentUser;

      return (null, user);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    }
  }
}
