import 'dart:convert';

import 'package:tignasseapp/export.dart';

class SplashViewModel {
  SplashScreenState state;

  SplashViewModel(SplashScreenState state) {
    this.state = state;

    backGroundImage();
  }

  //BackGround Api Call
  backGroundImage() {
    if (appState.bgList == null || appState.bgList.length == 0) {
      RestApi().callGetImage().then((result) {
        if (result.statusCode == 200) {
          var data = json.decode(result.body);
          data.forEach((data) {
            appState.bgList.add(BackGroundImageModel.fromJson(data));
          });
          state.setState(() {});
        }
      });
    }
  }
}
