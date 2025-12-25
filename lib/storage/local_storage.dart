import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Save primitives
  static Future<void> setString(String key, String value) async =>
      await _prefs.setString(key, value);

  static Future<void> setBool(String key, bool value) async =>
      await _prefs.setBool(key, value);

  static Future<void> setInt(String key, int value) async =>
      await _prefs.setInt(key, value);

  // Get primitives
  static String? getString(String key) => _prefs.getString(key);
  static bool? getBool(String key) => _prefs.getBool(key);
  static int? getInt(String key) => _prefs.getInt(key);

  // Save object (local JSON)
  static Future<void> setObject(String key, Map<String, dynamic> value) async {
    await _prefs.setString(key, jsonEncode(value));
  }

  static Map<String, dynamic>? getObject(String key) {
    final data = _prefs.getString(key);
    if (data == null) return null;
    return jsonDecode(data);
  }

  // Remove / clear
  static Future<void> remove(String key) async =>
      await _prefs.remove(key);

  static Future<void> clear() async =>
      await _prefs.clear();
}
