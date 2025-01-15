import 'package:injectable/injectable.dart';
import 'package:mystore/common/domain/repositories/user_repository.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/common/domain/usecases/usecase.dart';

enum UserStatus { notAuthenticated, emailNotVerified, emailVerified }

@injectable
class CheckUserStatusUseCase implements UseCase<UserStatus, NoParams> {
  final UserRepository repository;

  CheckUserStatusUseCase({required this.repository});

  @override
  Future<(Failure?, UserStatus?)> call(NoParams params) async {
    final user = await repository.getCurrentUser();

    if (user.$1 != null) {
      return (user.$1, null);
    } else if (user.$2 == null) {
      return (null, UserStatus.notAuthenticated);
    } else if (user.$2!.emailVerified) {
      return (null, UserStatus.emailVerified);
    } else {
      return (null, UserStatus.emailNotVerified);
    }
  }
}
