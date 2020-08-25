import 'package:tignasseapp/export.dart';

class CommonView {
  static logoImage(double width, double height) {
    return Container(
      alignment: Alignment.center,
      child: Image.asset(
        Utils.getAssetsImg('logo'),
//        'assets/img/logo.png', 220 ,80
        width: width,
        height: height,
        fit: BoxFit.fill,
      ),
    );
  }

  static backArrow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20,left: 15),
      child: InkResponse(
        onTap: () {
          navigatorPop(context);
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.black,
          size: 25,
        ),
      ),
    );
  }

  static titleText(String title) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.only(top: 20),
      child: AllText(
        title,
        color: ColorRes.black,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  static backArrowAndTitle(BuildContext context, String title, Color color) {
    return Stack(
      alignment: Alignment.center,
//      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkResponse(
          onTap: () {
            navigatorPop(context);
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.only(left: 15,top: 20),
            child: Icon(
              Icons.arrow_back,
              color: color,
              size: 25,
            ),
          ),
        ),
        Center(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 25, bottom: 5),
            child: AllText(
              title,
              color: color,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  static productDetailsLeftRightData(String title, String price, {Color showColor}) {
    return Padding(
      padding: EdgeInsets.only(left: 0, right: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Expanded(
              flex: 1,
              child: AllText(title,
                  color: ColorRes.black,
                  overflow: TextOverflow.ellipsis,
                  maxLine: 1,
                  align: TextAlign.left)),
          Expanded(
              flex: 1,
              child: AllText(price,
                  color: showColor != null ? showColor :ColorRes.black,
                  overflow: TextOverflow.ellipsis,
                  maxLine: 1,
                  align: TextAlign.right)),
        ],
      ),
    );
  }
}
