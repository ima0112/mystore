import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mystore/core/error/exceptions.dart';
import 'package:mystore/common/data/models/user_model.dart';

abstract class UserLocalDataSource {
  Future<void> cacheUser(IsarUserModel user);
  UserModel? getUser();
}

@Injectable(as: UserLocalDataSource)
class UserLocalDataSourceImpl implements UserLocalDataSource {
  final Isar _isar;

  UserLocalDataSourceImpl(this._isar);

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

  @override
  UserModel? getUser() {
    try {
      final user = _isar.isarUserModels.where().findFirstSync();
      return user?.toUserModel();
    } catch (e) {
      throw CacheException(e.toString());
    }
  }
}
