import 'package:shared_preferences/shared_preferences.dart';

abstract class SharedPrefs {
  SharedPrefs._internal();

  static Future<void> initialize() async =>
      _instance = await SharedPreferences.getInstance();

  static late SharedPreferences _instance;

  static SharedPreferences get instance => _instance;
}
