import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

import 'package:mystore/core/error/exceptions.dart';
import 'package:mystore/features/authentication/data/models/user_model.dart';

abstract class RemoteDataSource {
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required UserModel user,
  });

  Future<void> emailVerification();

  Future<bool> isEmailVerified();

  Future<void> logOut();

  Future<User?> getCurrentUser();
}

@Injectable(as: RemoteDataSource)
class RemoteDataSourceImpl implements RemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  RemoteDataSourceImpl(this._firebaseAuth, this._firestore);

  @override
  Future<UserModel> signUpWithEmailAndPassword(
      {required String email,
      required String password,
      required UserModel user}) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set(user.toJson());

      return user.copyWithId(userCredential.user!.uid);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> emailVerification() async {
    try {
      await _firebaseAuth.currentUser!.sendEmailVerification();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<bool> isEmailVerified() async {
    try {
      await _firebaseAuth.currentUser?.reload();
      return _firebaseAuth.currentUser!.emailVerified;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> logOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<User?> getCurrentUser() async {
    await _firebaseAuth.currentUser?.reload();
    return _firebaseAuth.currentUser;
  }
}
