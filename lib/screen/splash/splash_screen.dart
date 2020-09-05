import 'package:tignasseapp/export.dart';

class SplashScreen extends StatefulWidget {
  final String screenName;

  const SplashScreen({Key key, this.screenName}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  SplashViewModel model;

  @override
  Widget build(BuildContext context) {
    model ?? (model = SplashViewModel(this));

    return SafeArea(
      child: Scaffold(
        body: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[

//            CommonBackGroundImage.image1(context),
//             Future.delayed(const Duration(seconds: 1), () =>

//            Image.memory(bytes)

//          Image(image: FileImage(model.image1)),


             appState.bgList.length != 0 ? CommonBackGroundImage.networkImage(context, imageData()) : CommonBackGroundImage.image1(context),
//          appState.bgList.length != 0 ? NetworkImage(imageData()) : CommonBackGroundImage.image1(context),

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
                  child: AllText(
                    StringRes.connect,
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

  imageData() {
    if (appState.bgList.length != 0) {
      if (widget.screenName == PrefKeys.splashScreenKey) {
        return appState.bgList[0].image;
      } else if (widget.screenName == PrefKeys.loginBgKey) {
        return appState.bgList[1].image;
      } else if (widget.screenName == PrefKeys.registerBgKey) {
        return appState.bgList[2].image;
      } else if (widget.screenName == PrefKeys.unlockBgKey) {
        return appState.bgList[3].image;
      } else if (widget.screenName == PrefKeys.welcome1BgKey) {
        return appState.bgList[4].image;
      } else if (widget.screenName == PrefKeys.welcome2BgKey) {
        return appState.bgList[5].image;
      } else if (widget.screenName == PrefKeys.booksBgKey) {
        return appState.bgList[6].image;
      }
    }
  }

  Future sleep1() {
    return new Future.delayed(const Duration(seconds: 1), () => "1");
  }
}
