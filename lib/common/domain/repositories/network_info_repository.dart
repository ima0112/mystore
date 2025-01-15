import 'package:mystore/core/error/failures.dart';

abstract class NetworkInfoRepository {
  Future<(Failure?, bool?)> isConnected();
}
