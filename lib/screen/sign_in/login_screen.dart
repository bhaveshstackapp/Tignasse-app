import 'package:tignasseapp/export.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailTextFiled = TextEditingController();
  TextEditingController passWordTextFiled = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Stack(
            children: <Widget>[
              SplashScreen(),
              CommonView.transparent(context, 0.7),
              SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topRight,
                      child: CommonView.closeIcons(context),
                    ),
                    CommonView.sizeBoxHeight(context, 12),
                    AllText(StringRes.tignasse, fontSize: Utils.getDeviceWidth(context) / 13),
                    CommonView.sizeBoxHeight(context, 15),
                    AllText(StringRes.imLogin,
                        fontSize: Utils.getDeviceWidth(context) / 20),
                    CommonView.sizeBoxHeight(context, 35),
                    emailView(),
                    CommonView.sizeBoxHeight(context, 50),
                    passWordView(),
                    SizedBox(height: Utils.getDeviceWidth(context) / 20),
                    FilledButton(
                      text: StringRes.validate,
                      fontSize: Utils.getDeviceWidth(context) / 23,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {}
                      },
                    ),
                    SizedBox(height: Utils.getDeviceWidth(context) / 10),
                    AllText(StringRes.iRegisterOnline,
                        fontSize: Utils.getDeviceWidth(context) / 26,
                        color: ColorRes.white),
                    AllText(StringRes.onWebSite,
                        fontSize: Utils.getDeviceWidth(context) / 32,
                        color: ColorRes.white),
                    SizedBox(height: Utils.getDeviceWidth(context) / 10),
                    FilledButton(
                      text: StringRes.createAccount,
                      fontSize: Utils.getDeviceWidth(context) / 23,
                      onPressed: () {
                        registerScreenNavigator(context);
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  emailView() {
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
                controller: emailTextFiled,
                decoration: CommonView.textFiledDecoration(StringRes.email),
                validator: validateEmail),
          ),

      ],
    );
  }

  passWordView() {
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
              validator: validatePassword),
        ),

      ],
    );
  }

}
