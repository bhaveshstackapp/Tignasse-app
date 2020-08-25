import 'package:shared_preferences/shared_preferences.dart';

class Injector {
  static SharedPreferences sharedPreferences;

  static getInstance() async {
    sharedPreferences = await SharedPreferences.getInstance();

  }
}
