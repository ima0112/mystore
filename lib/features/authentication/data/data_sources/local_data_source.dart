import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mystore/core/error/exceptions.dart';
import 'package:mystore/features/authentication/data/models/user_model.dart';

abstract class LocalDataSource {
  Future<void> cacheUser(IsarUserModel user);
}

@Injectable(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  final Isar _isar;

  LocalDataSourceImpl(this._isar);

  @override
  Future<void> cacheUser(IsarUserModel user) async {
    try {
      await _isar.writeTxn(() async {
        await _isar.isarUserModels.put(user);
      });
    } catch (e) {
      throw CacheException(e.toString());
    }
  }
}
