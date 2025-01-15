import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:mystore/core/local_storage/secure_storage/secure_storage_data_source.dart';

@LazySingleton(as: SecureStorageDataSource)
class SecureStorageDataSourceImpl implements SecureStorageDataSource {
  final FlutterSecureStorage storage;

  SecureStorageDataSourceImpl(this.storage);

  @override
  Future<void> delete(String key) async {
    await storage.delete(key: key);
  }

  @override
  Future<void> deleteAll() async {
    await storage.deleteAll();
  }

  @override
  Future<String> read(String key) async {
    return await storage.read(key: key) ?? '';
  }

  @override
  Future<Map<String, String>> readAll() async {
    return await storage.readAll();
  }

  @override
  Future<void> write(String key, String value) async {
    await storage.write(key: key, value: value);
  }
}
