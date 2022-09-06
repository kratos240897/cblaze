import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefHelper {
  SharedPreferences? prefs;
  SharedPrefHelper() {
    init();
  }

  init() async {
    prefs = await SharedPreferences.getInstance();
  }

  Future<void> set(String key, String value) async {
    await prefs?.setString(key, value);
  }

  Future<String?> get(String key) async {
    return prefs?.getString(key);
  }
}
