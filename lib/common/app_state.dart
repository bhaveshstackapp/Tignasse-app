import 'package:tignasseapp/export.dart';

class AppState {
  static final AppState _singleton = AppState._internal();
  factory AppState() {
    return _singleton;
  }
  AppState._internal();


  int selectIndexColor = 0;

  String fcmToken;

  List<BackGroundImageModel> bgList = List();

//  List<UserModel> userDataList = List(); // inbox

}