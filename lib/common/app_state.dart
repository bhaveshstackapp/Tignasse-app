import 'package:tignasseapp/export.dart';

class AppState {
  static final AppState _singleton = AppState._internal();
  factory AppState() {
    return _singleton;
  }
  AppState._internal();

  List<BackGroundImageModel> bgList = List();

}