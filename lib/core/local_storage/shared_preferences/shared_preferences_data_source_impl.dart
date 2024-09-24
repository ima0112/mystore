import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:mystore/core/local_storage/shared_preferences/shared_preferences_data_source.dart';

@LazySingleton(as: SharedPreferencesDataSource)
class SharedPreferencesDataSourceImpl implements SharedPreferencesDataSource {
  final SharedPreferences sharedPreferences;

  SharedPreferencesDataSourceImpl(this.sharedPreferences);

  @override
  Future<void> clear() async => await sharedPreferences.clear();

  @override
  Future<void> remove(String key) async => await sharedPreferences.remove(key);

  @override
  Future<bool> getBool(String key) async {
    return sharedPreferences.getBool(key) ?? false;
  }

  @override
  Future<double> getDouble(String key) async {
    return sharedPreferences.getDouble(key) ?? 0.0;
  }

  @override
  Future<int> getInt(String key) async {
    return sharedPreferences.getInt(key) ?? 0;
  }

  @override
  Future<String> getString(String key) async {
    return sharedPreferences.getString(key) ?? '';
  }

  @override
  Future<void> saveBool(String key, bool value) async {
    await sharedPreferences.setBool(key, value);
  }

  @override
  Future<void> saveDouble(String key, double value) async {
    await sharedPreferences.setDouble(key, value);
  }

  @override
  Future<void> saveInt(String key, int value) async {
    await sharedPreferences.setInt(key, value);
  }

  @override
  Future<void> saveString(String key, String value) async {
    await sharedPreferences.setString(key, value);
  }
}
