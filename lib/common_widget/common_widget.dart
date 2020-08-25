import 'package:tignasseapp/export.dart';

class CommonView {

  static closeIcons(BuildContext context) {
    return InkResponse(
      onTap: () {
        navigatorPop(context);
      },
      child: Container(
        height: 35,
        width: 35,
        margin: EdgeInsets.only(right: 15, top: 15),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
          color: ColorRes.black,
          border: Border.all(color: ColorRes.white, width: 1)
        ),
        child: Icon(
          Icons.close,
          color: Colors.white,
          size: 25,
        ),
      ),
    );
  }


  static transparent(BuildContext context, double value) {
    return Container(
      width: Utils.getDeviceWidth(context),
      height: Utils.getDeviceHeight(context),
      color: Colors.black.withOpacity(value),
    );
  }

  static textFiledDecoration(String hintText) {
    return InputDecoration(
      hintText: hintText,
//          labelText: StringRes.password,
      hintStyle: TextStyle(color: ColorRes.lightGrey),
      contentPadding: EdgeInsets.only(left: 10),
      fillColor: ColorRes.white,
      border: InputBorder.none,
    );
  }

  static sizeBoxHeight(BuildContext context, int value) {
    return SizedBox(height: Utils.getDeviceHeight(context) / value);
  }

  static sizeBoxWidth(BuildContext context, int value) {
    return SizedBox(height: Utils.getDeviceHeight(context) / value);
  }

}
