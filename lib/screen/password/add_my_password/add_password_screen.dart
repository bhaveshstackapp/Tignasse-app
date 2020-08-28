import 'package:tignasseapp/export.dart';

class AddPasswordScreen extends StatefulWidget {
  @override
  _AddPasswordScreenState createState() => _AddPasswordScreenState();
}

class _AddPasswordScreenState extends State<AddPasswordScreen> {

  TextEditingController passWordTextFiled = TextEditingController();

  bool isSignOutShow = true;

  @override
  Widget build(BuildContext context) {
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

                  AllText(StringRes.appParam,
                      fontSize: Utils.getDeviceWidth(context) / 20,
                      color: ColorRes.white),

                  AllText(StringRes.giveMyPassword,
                      fontSize: Utils.getDeviceWidth(context) / 22,
                      color: ColorRes.white),

                  CommonView.sizeBoxHeight(context, 20),

                  passWordTxtFiled(),

                  CommonView.sizeBoxHeight(context, 20),

                  FilledButton(
                    text: StringRes.validate,
                    fontSize: Utils.getDeviceWidth(context) / 23,
                    onPressed: () {
                      verificationCodeScreenNavigator(context);
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
              decoration: CommonView.textFiledDecoration(StringRes.password),
              validator: validatePassword
          ),
        ),

      ],
    );
  }
}
