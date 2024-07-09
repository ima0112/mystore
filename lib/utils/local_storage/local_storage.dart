abstract class MyLocalStorage {
  Future<void> saveData<T>(T value, String? key);
  Future<T?> readData<T>(String key);
  Future<void> removeData<T>(String key);
  Future<void> clearData();
}
