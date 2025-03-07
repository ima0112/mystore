import 'package:image_picker/image_picker.dart';
import 'package:mystore/core/error/failures.dart';

abstract class FileStorageRepository {
  Future<(Failure?, String?)> uploadFile(XFile image);
}
