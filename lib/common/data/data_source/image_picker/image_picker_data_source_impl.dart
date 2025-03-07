import 'dart:io';

import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/common/data/data_source/image_picker/image_picker_data_source.dart';
import 'package:path_provider/path_provider.dart';

@Injectable(as: ImagePickerDataSource)
class ImagePickerDataSourceImpl implements ImagePickerDataSource {
  final ImagePicker _imagePicker;

  ImagePickerDataSourceImpl(this._imagePicker);

  @override
  Future<File?> compressImage(File image) async {
    final directory = await getTemporaryDirectory();
    final targetPath =
        '${directory.path}/${DateTime.now().millisecondsSinceEpoch}.jpg';

    final result = await FlutterImageCompress.compressAndGetFile(
      image.absolute.path,
      targetPath,
      quality: 70,
    );

    return result != null ? File(result.path) : null;
  }

  @override
  Future<File?> pickImage({bool fromGallery = true}) async {
    final pickedFile = await _imagePicker.pickImage(
      source: fromGallery ? ImageSource.gallery : ImageSource.camera,
    );

    return pickedFile != null ? File(pickedFile.path) : null;
  }
}
