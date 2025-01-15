import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/common/data/models/user_model.dart';
import 'package:mystore/core/error/exceptions.dart';
import 'package:mystore/core/utils/extensions/extensions.dart';

abstract class UserRemoteDataSource {
  Future<void> saveUser(UserModel user);
  Future<UserModel?> getUser();
  Future<void> updateUser(UserModel user);
  Future<UserModel> createAndSaveUser(UserCredential? userCredential);
  User? get currentUser;
}

@Injectable(as: UserRemoteDataSource)
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  static const String collectionName = 'users';

  final FirebaseAuth _firebaseAuth;
  final FirebaseFirestore _firestore;

  User? _currentUser;

  @override
  User? get currentUser => _currentUser;

  UserRemoteDataSourceImpl(this._firestore, this._firebaseAuth) {
    _getCurrentUser();
  }

  @override
  Future<UserModel?> getUser() async {
    try {
      final userDoc = await _firestore
          .collection(collectionName)
          .doc(currentUser?.uid)
          .get();
      if (userDoc.exists) {
        return UserModel.fromJson(userDoc.data()!).copyWithId(userDoc.id);
      } else {
        return null;
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> saveUser(UserModel user) async {
    try {
      await _firestore
          .collection(collectionName)
          .doc(currentUser?.uid)
          .set(user.toJson());
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<void> updateUser(UserModel user) async {
    try {
      await _firestore
          .collection(collectionName)
          .doc(currentUser?.uid)
          .update(user.toJson());
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  @override
  Future<UserModel> createAndSaveUser(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        final displayName = userCredential.user!.displayName ?? '';

        final nameParts = displayName.split(' ');
        final firstName = nameParts[0];
        final lastName = nameParts.length > 1 ? nameParts[1] : '';
        final username = displayName.generateUsername();

        final user = UserModel(
          id: userCredential.user!.uid,
          username: username,
          firstName: firstName,
          lastName: lastName,
          email: userCredential.user!.email ?? '',
          photo: userCredential.user!.photoURL ?? '',
          phoneNumber: userCredential.user!.phoneNumber ?? '',
        );

        await _firestore
            .collection('users')
            .doc(userCredential.user!.uid)
            .set(user.toJson());

        return user;
      } else {
        throw ServerException('UserCredential is null');
      }
    } catch (e) {
      throw ServerException(e.toString());
    }
  }

  Future<void> _getCurrentUser() async {
    try {
      await _firebaseAuth.currentUser?.reload();
      _currentUser = _firebaseAuth.currentUser;
    } catch (e) {
      throw ServerException('Error initializing current user: $e');
    }
  }
}
