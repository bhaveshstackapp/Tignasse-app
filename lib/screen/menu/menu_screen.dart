import 'package:tignasseapp/export.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: <Widget>[
          CommonBackGroundImage.image1(context),
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
                        Expanded(
                            flex: 1,
                            child: AllText("Test", fontSize: 30, align: TextAlign.center)),
                        Container(
                          height: 100,
                          width: 2,
                          color: ColorRes.white,
                        ),
                        Expanded(
                            flex: 1,
                            child: AllText("Test", fontSize: 30, align: TextAlign.center)),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 2,
                            margin: EdgeInsets.only(left: 25, right: 15, top: 25, bottom: 25),
                            color: ColorRes.white,
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 2,
                            margin: EdgeInsets.only(left: 15, right: 25),

                            color: ColorRes.white,
                          ),
                        )
                      ],
                    ),

                    Row(
                      children: <Widget>[
                        Expanded(
                            flex: 1,
                            child: AllText("Test", fontSize: 30, align: TextAlign.center)),
                        Container(
                          height: 100,
                          width: 2,
                          color: ColorRes.white,
                        ),
                        Expanded(
                            flex: 1,
                            child: AllText("Test", fontSize: 30, align: TextAlign.center)),
                      ],
                    ),

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
}
