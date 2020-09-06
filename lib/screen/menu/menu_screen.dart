import 'package:tignasseapp/export.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {

  bool isBottomLineShow = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
//    SystemChrome.setPreferredOrientations([
//      DeviceOrientation.portraitUp,
//      DeviceOrientation.portraitDown,
//    ]);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: <Widget>[
//          CommonBackGroundImage.image1(context),
          CommonBackGroundImage.networkImageBg(context, appState.bgList[5].image),
          CommonView.transparent(context, 0.5),
          Column(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    iconsShow(Icons.home, 1),
                    AllText(StringRes.welcome,
                        color: ColorRes.white,
                        fontSize: Utils.getDeviceWidth(context) / 30),
                    iconsShow(Icons.lock, 2),
                  ],
                ),
              ),
              AllText(StringRes.tignasse,
                  color: ColorRes.white,
                  fontSize: Utils.getDeviceWidth(context) / 9,
                  fontFamily: StringRes.roboto,
                  fontWeight: FontWeight.w300),
              SizedBox(height: 10),
              AllText(StringRes.salonTignasse,
                  color: ColorRes.white,
                  fontSize: Utils.getDeviceWidth(context) / 18,
                  fontFamily: StringRes.roboto,
                  fontWeight: FontWeight.w300),
            ],
          ),



          Center(
            child: Padding(
              padding: EdgeInsets.only(top: Utils.getDeviceHeight(context) / 10),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(

                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,

                      children: <Widget>[
                        titleTextShow(StringRes.books, StringRes.tignasse, 1),
                        verticalLine(),
                        Expanded(
                            flex: 1,
                            child: Column(
                              children: [
                                AllText(StringRes.findA, fontSize: Utils.getDeviceWidth(context) / 18, align: TextAlign.center, color: ColorRes.lightGrey),
                                AllText(StringRes.look, fontSize: Utils.getDeviceWidth(context) / 11, align: TextAlign.center, color: ColorRes.white)
                              ],
                            )
                        )
//                        titleTextShow(StringRes.findA, StringRes.look, ColorRes.lightGrey, ColorRes.white, 15, Utils.getDeviceWidth(context) / 11),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        horizontalLine(),
                        horizontalLine()
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        titleTextShow(StringRes.services, StringRes.andTarifs,2),
                        verticalLine(),
                        titleTextShow(StringRes.strokeHeart, StringRes.products,3),
                      ],
                    ),

                    Visibility(
                      visible: isBottomLineShow,
                        child: Row(
                      children: <Widget>[
                        horizontalLine(),
                        horizontalLine()
                      ],
                    )),

                    Visibility(
                        visible: isBottomLineShow,
                        child: Container(
                          alignment: Alignment.center,
                          height: 100,
                          width: 2,
                          margin: EdgeInsets.only(left: 5, right: 5),
                          color: ColorRes.white,
                        ))
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }

  iconsShow(IconData icon, int i) {
    return InkResponse(
      onTap: () {},
      child: Container(
        height: Utils.getDeviceWidth(context) / 15,
        width: Utils.getDeviceWidth(context) / 15,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 1, color: ColorRes.white)),
        child: Icon(
          icon,
          size: Utils.getDeviceWidth(context) / 25,
          color: ColorRes.white,
        ),
      ),
    );
  }

  verticalLine() {
    return Container(
      height: 100,
      width: 2,
      margin: EdgeInsets.only(left: 5, right: 5),

      color: ColorRes.white,
    );
  }

  horizontalLine() {
    return  Expanded(
      flex: 1,
      child: Container(
        height: 2,
        alignment: Alignment.center,
        margin: EdgeInsets.only(left: 25, right: 25, top: 30, bottom: 30),
        color: ColorRes.white,
      ),
    );
  }

  titleTextShow(String title, String subTitle, int i) {
    return Expanded(
        flex: 1,
        child: InkResponse(
          onTap: () {
            booksListScreenNavigator(context);
//            addPasswordScreenNavigator(context);
          },
          child: Column(
            children: [
              AllText(title, fontSize: Utils.getDeviceWidth(context) / 11, align: TextAlign.center, color: ColorRes.white),
              AllText(subTitle, fontSize: Utils.getDeviceWidth(context) / 18, align: TextAlign.center, color: ColorRes.lightGrey)
            ],
          ),
        )
    );
  }
}
