import 'package:injectable/injectable.dart';
import 'package:mystore/common/domain/entities/user_entity.dart';
import 'package:mystore/common/domain/repositories/user_repository.dart';
import 'package:mystore/common/domain/usecases/usecase.dart';
import 'package:mystore/core/error/failures.dart';

@injectable
class ManageUserUseCase implements UseCase<UserEntity, NoParams> {
  final UserRepository _userRepository;

  ManageUserUseCase(this._userRepository);

  @override
  Future<(Failure?, UserEntity?)> call(NoParams params) async {
    throw UnimplementedError();
  }

  (Failure?, UserEntity?) getUser() => _userRepository.getUser();

  Future<(Failure?, UserEntity?)> updateUser(UserEntity user) async {
    return await _userRepository.updateUser(user);
  }
}
