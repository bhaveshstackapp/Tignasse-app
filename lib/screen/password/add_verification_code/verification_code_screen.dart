import 'package:tignasseapp/export.dart';

class VerificationCodeScreen extends StatefulWidget {
  @override
  _VerificationCodeScreenState createState() => _VerificationCodeScreenState();
}

class _VerificationCodeScreenState extends State<VerificationCodeScreen> {

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
                      welComeScreenNavigator(context);
                    },
                  ),

                  CommonView.sizeBoxHeight(context, 20),

                  AllText(StringRes.myCodeText,
                      fontSize: Utils.getDeviceWidth(context) / 22,
                      color: ColorRes.white,
                      align: TextAlign.center,
                  ),

                  CommonView.sizeBoxHeight(context, 35),

                  FilledButton(
                    text: StringRes.subscriptions,
                    fontSize: Utils.getDeviceWidth(context) / 23,
                    onPressed: () {
                    },
                  ),

                  CommonView.sizeBoxHeight(context, 10),

                  isSignOutShow ?

                  FilledButton(
                    text: StringRes.signOut,
                    fontSize: Utils.getDeviceWidth(context) / 23,
                    onPressed: () {
                      setState(() {
                        isSignOutShow = false;
                      });
                    },
                  ) :

                  Container(
                    height: 60,
                    padding: EdgeInsets.only(right: 10,left: 10),
                    margin: EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 15),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: ColorRes.white),
                      borderRadius: BorderRadius.circular(5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                          AllText(StringRes.signOut,color: ColorRes.white),
                        Row(
                          children: [
                            AllText(StringRes.conFirmer,color: ColorRes.white),
                            SizedBox(width: 15),
                            InkResponse(
                              onTap: () {
                                setState(() {
                                  isSignOutShow = true;
                                });
                              },
                              child: Container(
                                height: 28,
                                width: 28,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(width: 1, color: ColorRes.white),
                                ),
                                child: Icon(Icons.close, color: ColorRes.white),
                              ),
                            )
//                            IconButton(icon: Icon(Icons.close, color: ColorRes.white), onPressed: () {}),
                          ],
                        )
                      ],
                    ),
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
