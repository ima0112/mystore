import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';
import 'package:mystore/core/utils/formatters/formatter.dart';
import 'package:mystore/core/utils/local_storage/local_storage.dart';

@Injectable(as: MyLocalStorage)
class MyIsarStorage implements MyLocalStorage {
  final Isar isar;

  MyIsarStorage(this.isar);

  @override
  Future<T?> readData<T>(String key) async {
    return await isar.collection<T>().get(_id(key));
  }

  @override
  Future<void> saveData<T>(T value, _) async {
    await isar.writeTxn(() async {
      await isar.collection<T>().put(value);
    });
  }

  @override
  Future<void> removeData<T>(String key) async {
    await isar.writeTxn(() async {
      await isar.collection<T>().delete(_id(key));
    });
  }

  @override
  Future<void> clearData() async {
    await isar.clear();
  }

  int _id(String key) => MyFormatter.fastHash(key);
}
