import 'package:tignasseapp/export.dart';

class WelComeScreen extends StatefulWidget {
  @override
  _WelComeScreenState createState() => _WelComeScreenState();
}

class _WelComeScreenState extends State<WelComeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[

//          SplashScreen(screenName: PrefKeys.registerBgKey),

//          CommonBackGroundImage.image1(context),
          CommonBackGroundImage.networkImageBg(context, appState.bgList[4].image),
          CommonView.transparent(context, 0.5),

          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                AllText(StringRes.livingRoom,
                    fontSize: Utils.getDeviceWidth(context) / 10,
                    color: ColorRes.white,
                    fontFamily: StringRes.robotoCondensed),

                Padding(
                    padding: EdgeInsets.only(top: Utils.getDeviceWidth(context) / 15, bottom: Utils.getDeviceWidth(context) / 13),
                    child: AllText(StringRes.tignasse,
                        fontSize: Utils.getDeviceWidth(context) / 4.5,
                        color: ColorRes.white,
                        fontFamily: StringRes.robotoCondensed)),

                AllText(StringRes.welcome,
                    fontSize: Utils.getDeviceWidth(context) / 10,
                    color: ColorRes.white,
                    fontFamily: StringRes.robotoCondensed),

              ],
            ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: InkResponse(
              onTap: () {
                menuScreenNavigator(context);
              },
              child: Container(
                height: Utils.getDeviceWidth(context) / 7,
                width: Utils.getDeviceWidth(context) / 7,
                margin: EdgeInsets.only(bottom: Utils.getDeviceWidth(context) / 9),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: ColorRes.white, width: 1)
                ),
                child: Icon(Icons.arrow_forward, size: Utils.getDeviceWidth(context) / 10, color: ColorRes.white),
              ),
            ),
          ) ,
          
          
          

        ],
      ),
    ));
  }
}
