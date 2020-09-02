import 'package:tignasseapp/export.dart';

class ForgotPasswordScreen extends StatefulWidget {
  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();
}

class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  TextEditingController passWordTextFiled = TextEditingController();

  bool isSignOutShow = true;
  ForgotPasswordViewModel model;

  @override
  Widget build(BuildContext context) {
    model ?? (model = ForgotPasswordViewModel(this));

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

                  AllText(StringRes.forgotPassword,
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
//                      verificationCodeScreenNavigator(context);
                      if(passWordTextFiled.text.length != 0) {
                        model.forgotPasswordApi();
                      }
//                      booksListScreenNavigator(context);
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
            margin:
            EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25)),
//          child:
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
          child: TextFormField(
              controller: passWordTextFiled,
              decoration: CommonView.textFiledDecoration(StringRes.email),
              validator: validatePassword
          ),
        ),

      ],
    );
  }
}
