abstract class SharedPreferencesDataSource {
  Future<void> saveString(String key, String value);
  Future<void> saveBool(String key, bool value);
  Future<void> saveInt(String key, int value);
  Future<void> saveDouble(String key, double value);

  Future<String> getString(String key);
  Future<bool> getBool(String key);
  Future<int> getInt(String key);
  Future<double> getDouble(String key);

  Future<void> remove(String key);
  Future<void> clear();
}