import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/common/domain/repositories/file_storage_repository.dart';
import 'package:mystore/core/error/failures.dart';

@Injectable(as: FileStorageRepository)
class FileStorageRepositoryImpl implements FileStorageRepository {
  final FirebaseStorage _firebaseStorage;

  FileStorageRepositoryImpl(this._firebaseStorage);

  @override
  Future<(Failure?, String?)> uploadFile(XFile image) async {
    try {
      String path = 'Users/Images/Profile';

      final ref = _firebaseStorage.ref(path).child(image.name);
      await ref.putFile(File(image.path));
      final url = await ref.getDownloadURL();
      return (null, url);
    } catch (e) {
      return (StorageFailure(e.toString()), null);
    }
  }
}
