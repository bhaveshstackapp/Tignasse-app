import 'dart:convert';
import 'package:tignasseapp/common/sqlf_lite_db.dart';
import 'package:tignasseapp/export.dart';

class SplashViewModel {
  SplashScreenState state;

  bool isConnect;

  var image1;

  SplashViewModel(SplashScreenState state) {
    this.state = state;

    backGroundImage();
  }

  //BackGround Api Call
  backGroundImage() async {
//    List<Image> image12 = List();

    if (appState.bgList == null || appState.bgList.length == 0) {
      isConnect = await isConnectNetworkWithMessage(state.context);
      if (!isConnect) return null;

      var data = await DataBaseSqlFLite.instance.bgImageShow();

      if (data.length != 0 && data != null) {
        dataShow(data);
      } else {
        RestApi().callGetImage().then((result) async {
          if (result.statusCode == 200) {
            /*var deleteCount = DataBaseSqlFLite.instance.deleteAllBgImage();*/
//            BackGroundImageModel backGroundImageModel = BackGroundImageModel.fromJson(json.decode(result.body));

            await DataBaseSqlFLite.instance.insertBgImage({"imageList": result.body});

            var dataNew = await DataBaseSqlFLite.instance.bgImageShow();
            dataShow(dataNew);

            /*     var imageList0 = data[0]['imageList'];
            var dataImage = json.decode(imageList0);
            dataImage.forEach((imageList) {
              appState.bgList.add(BackGroundImageModel.fromJson(imageList));
            });
            print(dataImage);
            state.setState(() {});*/

          }
        });
      }
    }
  }


  dataShow(List<Map<String, dynamic>> data) {
    var imageList0 = data[0]['imageList'];
    var dataImage = json.decode(imageList0);
    dataImage.forEach((imageList) {
      appState.bgList.add(BackGroundImageModel.fromJson(imageList));
    });
    print(dataImage);
    state.setState(() {});
  }


}
