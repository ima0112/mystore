import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/exceptions.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/features/authentication/data/data_sources/local_data_source.dart';
import 'package:mystore/features/authentication/data/data_sources/remote_data_source.dart';
import 'package:mystore/features/authentication/data/models/user_model.dart';
import 'package:mystore/features/authentication/domain/entities/user_entity.dart';
import 'package:mystore/features/authentication/domain/repositories/authentication_repository.dart';

@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  AuthenticationRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<(Failure?, UserEntity?)> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required UserEntity user,
  }) async {
    try {
      final UserModel userModel =
          await remoteDataSource.signUpWithEmailAndPassword(
        email: email,
        password: password,
        user: UserModel.fromEntity(user),
      );

      await localDataSource.cacheUser(userModel.toIsarUserModel());

      return (null, userModel);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    } on CacheException catch (e) {
      return (CacheFailure(e.message), null);
    }
  }
}
