import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class LocaleManager {
  static final LocaleManager _instance = LocaleManager._init();

  SharedPreferences? _preferences;
  static LocaleManager get instance => _instance;

  /// [SharedPreferences] init constructor.
  LocaleManager._init() {
    SharedPreferences.getInstance().then((value) {
      _preferences = value;
    });
  }

  /// [SharedPreferences] init function.
  static Future prefrencesInit() async {
    instance._preferences ??= await SharedPreferences.getInstance();
    return;
  }

  /// [SharedPreferences] reset shared cache.
  Future<bool> clear() async {
    return await _preferences!.clear();
  }

  /// [T] need to class type after convert to string and save them.
  Future<bool> setDynamicJson<T>(PreferencesKeys key, T model) async {
    return await _preferences!.setString(key.toString(), jsonEncode(model));
  }

  ///[PreferencesKeys] work to save your String value in shared
  Future<bool> setStringValue(PreferencesKeys key, String value) async {
    return await _preferences!.setString(key.toString(), value);
  }

  ///[PreferencesKeys] work to save your Int value in shared
  Future<bool> setIntegerValue(PreferencesKeys key, int value) async {
    return await _preferences!.setInt(key.toString(), value);
  }

  ///[PreferencesKeys] work to save your Bool value in shared
  Future<bool> setBooleanValue(PreferencesKeys key, bool value) async {
    return await _preferences!.setBool(key.toString(), value);
  }

  String getStringValue(PreferencesKeys key) => _preferences!.getString(key.toString()) ?? '';
  bool getBoolValue(PreferencesKeys key) => _preferences!.getBool(key.toString()) ?? false;
  int getIntegerValue(PreferencesKeys key) => _preferences!.getInt(key.toString()) ?? -1;
  String getDynamicJson(PreferencesKeys key) => getStringValue(key);
}

enum PreferencesKeys { TOKEN, SOCIAL, FIRST_LOGIN_APP, REFRESH_TOKEN, LOGIN, USER, THEME }
