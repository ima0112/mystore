import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/exceptions.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/local_storage/secure_storage/secure_storage_data_source.dart';
import 'package:mystore/core/local_storage/shared_preferences/shared_preferences_data_source.dart';
import 'package:mystore/features/authentication/data/data_sources/local_data_source.dart';
import 'package:mystore/features/authentication/data/data_sources/remote_data_source.dart';
import 'package:mystore/features/authentication/data/models/user_model.dart';
import 'package:mystore/features/authentication/domain/entities/user_entity.dart';
import 'package:mystore/features/authentication/domain/repositories/authentication_repository.dart';

@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final SharedPreferencesDataSource sharedPreferencesDataSource;
  final SecureStorageDataSource secureStorageDataSource;
  final RemoteDataSource remoteDataSource;
  final LocalDataSource localDataSource;

  static const rememberEmail = 'remember_email';
  static const rememberPassword = 'remember_password';

  AuthenticationRepositoryImpl(
    this.secureStorageDataSource,
    this.remoteDataSource,
    this.localDataSource,
    this.sharedPreferencesDataSource,
  );

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

  @override
  Future<(Failure?, void)> sendEmailVerification() async {
    try {
      await remoteDataSource.emailVerification();
      return (null, null);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    }
  }

  @override
  Future<(Failure?, bool)> isEmailVerified() async {
    try {
      final bool isEmailVerified = await remoteDataSource.isEmailVerified();
      return (null, isEmailVerified);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), false);
    }
  }

  @override
  Future<(Failure?, void)> logOut() async {
    try {
      await remoteDataSource.logOut();
      return (null, null);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    }
  }

  @override
  Future<(Failure?, User?)> getCurrentUser() async {
    try {
      final User? user = await remoteDataSource.getCurrentUser();
      return (null, user);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    }
  }

  @override
  Future<(Failure?, UserEntity?)> signInWithEmailAndPassword({
    required String email,
    required String password,
    required bool rememberMe,
  }) async {
    try {
      final UserModel userModel =
          await remoteDataSource.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      await localDataSource.cacheUser(userModel.toIsarUserModel());

      return (null, userModel);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    } on CacheException catch (e) {
      return (CacheFailure(e.message), null);
    } catch (e) {
      return (ServerFailure(e.toString()), null);
    }
  }

  @override
  Future<UserAuthCredentials?> getCredentials() async {
    final email = await sharedPreferencesDataSource.getString(rememberEmail);
    final password = await secureStorageDataSource.read(rememberPassword);

    if (email.isNotEmpty || password.isNotEmpty) {
      return UserAuthCredentials(email: email, password: password);
    } else {
      return null;
    }
  }

  @override
  Future<void> clearCredentials() async {
    await sharedPreferencesDataSource.remove(rememberEmail);
    await secureStorageDataSource.delete(rememberPassword);
  }

  @override
  Future<(Failure?, void)> saveCredentials(
      {required String email, required String password}) async {
    try {
      await sharedPreferencesDataSource.saveString(rememberEmail, email);
      await secureStorageDataSource.write(rememberPassword, password);
      return (null, null);
    } catch (e) {
      return (CacheFailure(e.toString()), null);
    }
  }

  @override
  Future<(Failure?, UserEntity?)> signInWithGoogle() async {
    try {
      final UserModel userModel = await remoteDataSource.signInWithGoogle();

      await localDataSource.cacheUser(userModel.toIsarUserModel());

      return (null, userModel);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    } on CacheException catch (e) {
      return (CacheFailure(e.message), null);
    } catch (e) {
      return (ServerFailure(e.toString()), null);
    }
  }

  @override
  Future<(Failure?, void)> sendPasswordResetEmail(String email) async {
    try {
      await remoteDataSource.sendPasswordResetEmail(email);
      return (null, null);
    } on ServerException catch (e) {
      return (ServerFailure(e.message), null);
    }
  }
}
