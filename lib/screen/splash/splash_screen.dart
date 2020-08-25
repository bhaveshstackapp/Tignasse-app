import 'package:tignasseapp/export.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            CommonBackGroundImage.image1(context),
            CommonView.transparent(context, 0.5),
            Padding(
                padding: EdgeInsets.only(top: 25),
                child: AllText(StringRes.tignasse,
                    fontSize: Utils.getDeviceWidth(context) / 4.5,
                    color: ColorRes.white,
                    fontFamily: StringRes.robotoCondensed)),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                AllText(StringRes.applicationTignasse,
                    fontSize: Utils.getDeviceWidth(context) / 18,
                    color: ColorRes.white,
                    fontFamily: StringRes.robotoCondensed,
                    fontWeight: FontWeight.w100),
                SizedBox(height: Utils.getDeviceHeight(context) / 12),
                InkWell(
                  onTap: () {
                    logInScreenNavigator(context);
                  },
                  child: AllText(StringRes.connect,
                      fontSize: Utils.getDeviceWidth(context) / 20,
                      color: ColorRes.white,
                      fontFamily: StringRes.robotoCondensed,
                      fontWeight: FontWeight.w600,
                      letterSpace: 0.5,
                      fontStyle: FontStyle.italic,
                  ),
                ),
                SizedBox(height: Utils.getDeviceHeight(context) / 20)
              ],
            )
          ],
        ),
      ),
    );
  }
}
