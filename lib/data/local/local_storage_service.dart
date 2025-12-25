import 'package:shared_preferences/shared_preferences.dart';

class LocalStorageService {
  final SharedPreferences _prefs;

  LocalStorageService(this._prefs);

  /// Save
  Future<void> saveString(String key, String value) async {
    await _prefs.setString(key, value);
  }

  Future<void> saveBool(String key, bool value) async {
    await _prefs.setBool(key, value);
  }

  /// Get
  String? getString(String key) => _prefs.getString(key);
  bool? getBool(String key) => _prefs.getBool(key);

  /// Remove / Clear
  Future<void> remove(String key) async {
    await _prefs.remove(key);
  }

  Future<void> clearAll() async {
    await _prefs.clear();
  }
}
