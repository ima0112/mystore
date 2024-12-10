import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';

import 'package:mystore/core/error/exceptions.dart';
import 'package:mystore/core/utils/extensions/extensions.dart';
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

  Future<UserModel> signInWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<UserModel> signInWithGoogle();
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
  Future<UserModel> signInWithGoogle() async {
    try {
      final GoogleSignIn googleSignIn = GoogleSignIn();

      final GoogleSignInAccount? account = await googleSignIn.signIn();

      final GoogleSignInAuthentication? googleAuth =
          await account?.authentication;

      final credentials = GoogleAuthProvider.credential(
        accessToken: googleAuth!.accessToken,
        idToken: googleAuth.idToken,
      );

      final userCredential =
          await _firebaseAuth.signInWithCredential(credentials);

      final user = await _createUserRecord(userCredential);

      await _firestore
          .collection('users')
          .doc(userCredential.user!.uid)
          .set(user.toJson());

      return user;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  Future<UserModel> _createUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        final displayName = userCredential.user!.displayName ?? '';

        final nameParts = displayName.split(' ');
        final firstName = nameParts[0];
        final lastName = nameParts.length > 1 ? nameParts[1] : '';
        final username = displayName.generateUsername();

        return UserModel(
          id: userCredential.user!.uid,
          username: username,
          firstName: firstName,
          lastName: lastName,
          email: userCredential.user!.email ?? '',
          photo: userCredential.user!.photoURL ?? '',
          phoneNumber: userCredential.user!.phoneNumber ?? '',
          password: '',
        );
      } else {
        throw ServerException('UserCredential is null');
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
