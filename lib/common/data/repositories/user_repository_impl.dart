import 'package:injectable/injectable.dart';
import 'package:mystore/common/data/data_source/user_local_data_source.dart';
import 'package:mystore/common/data/data_source/user_remote_data_source.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/common/domain/repositories/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  final UserLocalDataSource _userLocalDataSource;
  final UserRemoteDataSource _userRemoteDataSource;

  UserRepositoryImpl(this._userLocalDataSource, this._userRemoteDataSource);

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
