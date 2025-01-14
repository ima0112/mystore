import 'package:injectable/injectable.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/repositories/network/network_info_repository.dart';
import 'package:mystore/core/usecases/usecase.dart';

@lazySingleton
class IsConnectedUseCase implements UseCase<bool, NoParams> {
  final NetworkInfoRepository networkInfoRepository;

  IsConnectedUseCase({required this.networkInfoRepository});

  @override
  Future<(Failure?, bool?)> call(NoParams params) async {
    return await networkInfoRepository.isConnected();
  }
}
