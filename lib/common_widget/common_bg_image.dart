import 'package:tignasseapp/export.dart';

class CommonBackGroundImage{

  static image1(BuildContext context) {
    return Container(
        width: Utils.getDeviceWidth(context),
        height: Utils.getDeviceHeight(context),
        child: Image(image: AssetImage(Utils.getAssetsImg('bg1')), fit: BoxFit.fill));
  }

}