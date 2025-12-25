import 'dart:convert';
import 'dart:developer';

import 'package:food_delivery_app/core/utils/extensions/app_path.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
// import 'package:hiveme_up/utils/app_path.dart';

class StorageKeys {
  static const String userToken = 'token';
  static const String isAdmin = 'isAdmin';
  static const String firstTime = 'firstTime';
  static const String otpToken = 'otptoken';
  static const String resetPasswordToken = 'resetPasswordToken';
  static const String verifyEmailToken = 'verifyEmailToken';
  static const String userName = 'userName';
  static const String userId = 'userId';
  static const String geoLatitude = 'geoLatitude';
  static const String geoLongitude = 'geoLongitude';
  static const String userCategoriesStatus = 'userCategoriesStatus';
  static const String groupId = 'groupId';
   static const String profileUrl = 'profileUrl';
}

class KeyValueStorage {
  static final KeyValueStorage _instance = KeyValueStorage._internal();

  KeyValueStorage._internal();

  factory KeyValueStorage() {
    return _instance;
  }

  late Box<dynamic> _box;

  Future<void> initializeBox(String name, {bool useMemory = false}) async {
    if (!useMemory) {
      _box = await Hive.openBox<dynamic>(
        name,
        path: useMemory ? null : (await AppPath.getDatabaseDirectory()).path,
      );
    }
    log('Finished initializing "["$name"]" storage');
  }

  //Resets on logout
  Future<void> reset() async {
    if (_box.isOpen) _box.clear();
  }

  clear() async {
    await _box.clear();
  }

  clearKeyValue(String key) {
    if (!containsKey(key)) return;
    _box.delete(key);
  }

  void saveStringSync(String key, String? value) {
    saveString(key, value).catchError((err) {
      log("Failed to save string to local storage ($key=$value)", error: err);
      return false;
    }).then((value) {
      //
    });
  }

  Future<bool> saveString(String key, String? value) async {
    try {
      await _box.put(key, value);
      return true;
    } catch (e) {
      Get.snackbar(
        'Error',
        "Failed To Save In Storage",
        duration: const Duration(milliseconds: 500),
      );
      return false;
    }
  }

  /// Doesn't have to be awaited -- Hive will store value straight away synchronously
  Future<bool> saveBool(String key, bool value, {Box? customBox}) async {
    try {
      final box = customBox ?? _box;
      await box.put(key, value);
      return true;
    } catch (e) {
      Get.snackbar(
        'Error',
        "Failed To Save In Storage",
        duration: const Duration(milliseconds: 500),
      );
      return false;
    }
  }

  /// Doesn't have to be awaited -- Hive will store value straight away synchronously
  Future<bool> saveMap(String key, Map<String, dynamic> value) async {
    String jsonString;
    try {
      jsonString = jsonEncode(value);
      await _box.put(key, jsonString);
      return true;
    } catch (e) {
      Get.snackbar(
        'Error',
        "Failed To Save In Storage",
        duration: const Duration(milliseconds: 500),
      );
      return false;
    }
  }

  bool retrieveBool(String key, [bool defaultValue = false]) {
    bool value = _box.get(key, defaultValue: defaultValue) as bool;
    return value;
  }

  String? retrieveString(String key) {
    String? value = _box.get(key) as String?;
    return value;
  }

  Map<String, dynamic>? retrieveMap(String key) {
    String? json = _box.get(key) as String?;
    if (json == null) return null;
    Map<String, dynamic> jsonMap = jsonDecode(json);
    return jsonMap;
  }

  bool containsKey(String key) => _box.containsKey(key);
}
