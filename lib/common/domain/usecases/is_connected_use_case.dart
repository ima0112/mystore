import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/common/domain/repositories/network_info_repository.dart';
import 'package:mystore/common/domain/usecases/usecase.dart';

@lazySingleton
class IsConnectedUseCase implements UseCase<bool, NoParams> {
  final NetworkInfoRepository networkInfoRepository;

  IsConnectedUseCase({required this.networkInfoRepository});

  @override
  Future<(Failure?, bool?)> call(NoParams params) async {
    return await networkInfoRepository.isConnected();
  }
}
