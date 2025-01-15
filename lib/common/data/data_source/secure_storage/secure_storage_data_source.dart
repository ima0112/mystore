abstract class SecureStorageDataSource {
  Future<String> read(String key);
  Future<void> write(String key, String value);
  Future<void> delete(String key);

  Future<Map<String, String>> readAll();
  Future<void> deleteAll();
}
