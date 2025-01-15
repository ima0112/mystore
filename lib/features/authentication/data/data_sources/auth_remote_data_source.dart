import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'package:mystore/core/error/exceptions.dart';
import 'package:mystore/common/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> signUpWithEmailAndPassword({
    required String email,
    required String password,
    required UserModel user,
  });

  Future<void> emailVerification();

  Future<bool> isEmailVerified();

  Future<void> logOut();

  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserCredential> signInWithGoogle();

  Future<void> sendPasswordResetEmail(String email);
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;
  final GoogleSignIn _googleSignIn;

  AuthRemoteDataSourceImpl(
      this._firebaseAuth, this._firestore, this._googleSignIn);

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

      final userId = userCredential.user!.uid;
      final newUser = user.copyWithId(userId);

      await _firestore.collection('users').doc(userId).set(newUser.toJson());

      return newUser;
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
      await _googleSignIn.signOut();
      await _firebaseAuth.signOut();
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final UserCredential userCredential =
          await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      final DocumentSnapshot userDoc = await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .get();

      UserModel user =
          UserModel.fromJson(userDoc.data() as Map<String, dynamic>);

      return user.copyWithId(userCredential.user!.uid);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserCredential> signInWithGoogle() async {
    try {
      final GoogleSignInAccount? account = await _googleSignIn.signIn();

      final GoogleSignInAuthentication? googleAuth =
          await account?.authentication;

      final credentials = GoogleAuthProvider.credential(
        accessToken: googleAuth!.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential =
          await _firebaseAuth.signInWithCredential(credentials);

      return userCredential;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> sendPasswordResetEmail(String email) async {
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
