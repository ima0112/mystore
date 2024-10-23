import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:mystore/core/error/failures.dart';
import 'package:mystore/core/repositories/network/network_info_repository.dart';

@LazySingleton(as: NetworkInfoRepository)
class NetworkInfoImpl implements NetworkInfoRepository {
  InternetConnectionChecker connectionChecker = InternetConnectionChecker();

  @override
  Future<(Failure?, bool?)> isConnected() async {
    try {
      final isConnected = await connectionChecker.hasConnection;
      return (null, isConnected);
    } catch (e) {
      return (NetworkFailure(e.toString()), null);
    }
  }
}
