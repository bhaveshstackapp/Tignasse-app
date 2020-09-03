import 'package:tignasseapp/export.dart';

class ForgotVerificationScreen extends StatefulWidget {

  final int code;
  const ForgotVerificationScreen({Key key, this.code}) : super(key: key);

  @override
  ForgotVerificationScreenState createState() => ForgotVerificationScreenState();
}

class ForgotVerificationScreenState extends State<ForgotVerificationScreen> {

  TextEditingController verificationTextFiled = TextEditingController();

  bool isSignOutShow = true;
  ForgotVerificationViewModel model;

  @override
  Widget build(BuildContext context) {
    model ?? (model = ForgotVerificationViewModel(this));

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            MenuScreen(),
            CommonView.transparent(context, 0.7),
            SingleChildScrollView(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: CommonView.closeIcons(context),
                  ),
                  CommonView.sizeBoxHeight(context, 12),
                  AllText(StringRes.tignasse,
                      fontSize: Utils.getDeviceWidth(context) / 15,
                      color: ColorRes.white),
                  CommonView.sizeBoxHeight(context, 20),

                  AllText(StringRes.forgotPasswordVerification,
                      fontSize: Utils.getDeviceWidth(context) / 20,
                      color: ColorRes.white),

//                  AllText(StringRes.giveMyPassword,
//                      fontSize: Utils.getDeviceWidth(context) / 22,
//                      color: ColorRes.white),

                  CommonView.sizeBoxHeight(context, 20),

                  passWordTxtFiled(),

                  CommonView.sizeBoxHeight(context, 20),

                  FilledButton(
                    text: StringRes.validate,
                    fontSize: Utils.getDeviceWidth(context) / 23,
                    onPressed: () {
//                      if(passWordTextFiled.text.length != 0) {
//                        model.forgotPasswordApi();
//                      }

                      if(widget.code.toString() == verificationTextFiled.text) {
//                        welComeScreenNavigator(context);

                       Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                           LoginScreen()), (Route<dynamic> route) => false);

//                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelComeScreen()));
                      } else {
                        Utils.showToast("verification code incorrect");
                      }

                    },
                  ),

                  SizedBox(height: 25)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  passWordTxtFiled() {
    return Stack(
      children: <Widget>[
        Container(
            height: 50,
            decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                color: ColorRes.white,
                border: new Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            margin: EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25)),
//          child:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
          child: TextFormField(
              controller: verificationTextFiled,
              decoration: CommonView.textFiledDecoration(StringRes.verificationCode),
              validator: validatePassword
          ),
        ),

      ],
    );
  }
}
