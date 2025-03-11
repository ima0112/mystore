import 'package:image_picker/image_picker.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/common/domain/repositories/file_storage_repository.dart';
import 'package:mystore/common/domain/repositories/user_repository.dart';
import 'package:mystore/common/domain/usecases/usecase.dart';
import 'package:mystore/core/error/failures.dart';

@injectable
class ProfileImageUseCase implements UseCase<UserEntity, ProfileImageParams> {
  final FileStorageRepository fileStorageRepository;
  final UserRepository userRepository;

  ProfileImageUseCase(this.fileStorageRepository, this.userRepository);

  @override
  Future<(Failure?, UserEntity?)> call(ProfileImageParams params) async {
    final image = await fileStorageRepository.uploadFile(params.image);
    if (image.$2 != null) {
      final result =
          await userRepository.updateSingleField({'photo': image.$2});
      return result;
    } else {
      return (image.$1, null);
    }
  }
}

class ProfileImageParams {
  final XFile image;

  ProfileImageParams({required this.image});
}
