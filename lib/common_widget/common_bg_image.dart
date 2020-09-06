import 'package:tignasseapp/export.dart';

class CommonBackGroundImage{

  static image1(BuildContext context) {
    return Container(
        width: Utils.getDeviceWidth(context),
        height: Utils.getDeviceHeight(context),
        child: Image(image: AssetImage(Utils.getAssetsImg('bg1')), fit: BoxFit.fill));
  }

  static networkImageBg(BuildContext context, String image) {
    return Container(
        width: Utils.getDeviceWidth(context),
        height: Utils.getDeviceHeight(context),
        child: Image(image: NetworkImage(image), fit: BoxFit.fill));
  }

  static networkImageBook(BuildContext context, String image) {
    return Container(
        width: Utils.getDeviceWidth(context),
        height: Utils.getDeviceHeight(context),
        child: Image(image: NetworkImage(image), fit: BoxFit.contain)
    );
  }


}