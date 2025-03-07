import 'dart:io';

abstract class ImagePickerDataSource {
  Future<File?> pickImage({bool fromGallery = true});
  Future<File?> compressImage(File image);
}
