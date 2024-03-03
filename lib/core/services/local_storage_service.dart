import 'package:shared_preferences/shared_preferences.dart';

/** 
 *  SharedPreferences로 로컬 스토리지 사용하는 서비스
 *  반드시 init 후에 사용해야 함.
 * */
final class LocalStorageService implements SharedPreferences {
  static late final SharedPreferences _sharedPreference;

  static SharedPreferences get instance => _sharedPreference;

  static Future<SharedPreferences> init() async =>
      _sharedPreference = await SharedPreferences.getInstance();

  @override
  Future<bool> clear() {
    return _sharedPreference.clear();
  }

  @override
  @Deprecated('deprecated 된 메소드')
  Future<bool> commit() {
    return _sharedPreference.commit();
  }

  @override
  bool containsKey(String key) {
    return _sharedPreference.containsKey(key);
  }

  @override
  Object? get(String key) {
    return _sharedPreference.get(key);
  }

  @override
  bool? getBool(String key) {
    return _sharedPreference.getBool(key);
  }

  @override
  double? getDouble(String key) {
    return _sharedPreference.getDouble(key);
  }

  @override
  int? getInt(String key) {
    return _sharedPreference.getInt(key);
  }

  @override
  Set<String> getKeys() {
    return _sharedPreference.getKeys();
  }

  @override
  String? getString(String key) {
    return _sharedPreference.getString(key);
  }

  @override
  List<String>? getStringList(String key) {
    return _sharedPreference.getStringList(key);
  }

  @override
  Future<void> reload() {
    return _sharedPreference.reload();
  }

  @override
  Future<bool> remove(String key) {
    return _sharedPreference.remove(key);
  }

  @override
  Future<bool> setBool(String key, bool value) {
    return _sharedPreference.setBool(key, value);
  }

  @override
  Future<bool> setDouble(String key, double value) {
    return _sharedPreference.setDouble(key, value);
  }

  @override
  Future<bool> setInt(String key, int value) {
    return _sharedPreference.setInt(key, value);
  }

  @override
  Future<bool> setString(String key, String value) {
    return _sharedPreference.setString(key, value);
  }

  @override
  Future<bool> setStringList(String key, List<String> value) {
    return _sharedPreference.setStringList(key, value);
  }
}
