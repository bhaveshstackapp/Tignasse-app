import 'package:tignasseapp/export.dart';

class SignUpScreen extends StatefulWidget {
  @override
  SignUpScreenState createState() => SignUpScreenState();
}

class SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailTextFiled = TextEditingController();
  TextEditingController passWordTextFiled = TextEditingController();
  TextEditingController firstNameTextFiled = TextEditingController();
  TextEditingController lastNameTextFiled = TextEditingController();
  TextEditingController passWordConfirmTextFiled = TextEditingController();
  TextEditingController companyTextFiled = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  SignUpViewModel model;

  @override
  Widget build(BuildContext context) {
    model ?? (model = SignUpViewModel(this));

    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: <Widget>[
        SplashScreen(screenName: PrefKeys.registerBgKey),
        CommonView.transparent(context, 0.7),
        SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: CommonView.closeIcons(context),
                ),
                CommonView.sizeBoxHeight(context, 12),
                AllText(StringRes.tignasse,
                    fontSize: Utils.getDeviceWidth(context) / 13),
                CommonView.sizeBoxHeight(context, 25),
                AllText(StringRes.iRegister,
                    fontSize: Utils.getDeviceWidth(context) / 25,
                    color: ColorRes.white),
                AllText(StringRes.createCustom,
                    fontSize: Utils.getDeviceWidth(context) / 33,
                    color: ColorRes.white),
                CommonView.sizeBoxHeight(context, 35),
                firstNameView(),
                CommonView.sizeBoxHeight(context, 35),
                lastNameView(),
                CommonView.sizeBoxHeight(context, 35),
                companyNameView(),
                CommonView.sizeBoxHeight(context, 35),
                emailView(),
                CommonView.sizeBoxHeight(context, 50),
                passWordView(),
                CommonView.sizeBoxHeight(context, 35),
                conFormPassWordView(),
                SizedBox(height: Utils.getDeviceWidth(context) / 20),
                AllText(StringRes.requireField,
                    fontSize: Utils.getDeviceWidth(context) / 25,
                    color: ColorRes.white),
                SizedBox(height: Utils.getDeviceWidth(context) / 20),
                FilledButton(
                  text: StringRes.validate,
                  fontSize: Utils.getDeviceWidth(context) / 23,
                  onPressed: () {
                    validateButton();
                  },
                ),
                CommonView.sizeBoxHeight(context, 35),
              ],
            ),
          ),
        )
      ],
    )));
  }



  firstNameView() {
    return Stack(
      children: <Widget>[
        Container(
            height: 50,
            decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                color: ColorRes.white,
                border: new Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            margin: EdgeInsets.symmetric(
                horizontal: Utils.getDeviceWidth(context) / 25)),
//          child:
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Utils.getDeviceWidth(context) / 25),
          child: TextFormField(
              controller: firstNameTextFiled,
              validator: validateName,
              decoration: CommonView.textFiledDecoration(StringRes.firstName),
              ),
        ),
      ],
    );
  }

  lastNameView() {
    return Stack(
      children: <Widget>[
        Container(
            height: 50,
            decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                color: ColorRes.white,
                border: new Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            margin: EdgeInsets.symmetric(
                horizontal: Utils.getDeviceWidth(context) / 25)),
//          child:
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Utils.getDeviceWidth(context) / 25),
          child: TextFormField(
            controller: lastNameTextFiled,
            validator: validateLast,
            decoration: CommonView.textFiledDecoration(StringRes.lastName),
          ),
        ),
      ],
    );
  }

  companyNameView() {
    return Stack(
      children: <Widget>[
        Container(
            height: 50,
            decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                color: ColorRes.white,
                border: new Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            margin: EdgeInsets.symmetric(
                horizontal: Utils.getDeviceWidth(context) / 25)),
//          child:
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Utils.getDeviceWidth(context) / 25),
          child: TextFormField(
            controller: companyTextFiled,
            validator: validateCompany,
            decoration: CommonView.textFiledDecoration(StringRes.company),
          ),
        ),
      ],
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
            margin: EdgeInsets.symmetric(
                horizontal: Utils.getDeviceWidth(context) / 25)),
//          child:
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Utils.getDeviceWidth(context) / 25),
          child: TextFormField(
            controller: emailTextFiled,
            validator: validateEmail,
            decoration: CommonView.textFiledDecoration(StringRes.cndEmail),
          ),
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
            margin: EdgeInsets.symmetric(
                horizontal: Utils.getDeviceWidth(context) / 25)),
//          child:
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Utils.getDeviceWidth(context) / 25),
          child: TextFormField(
            controller: passWordTextFiled,
            validator: validatePassword,
            obscureText: true,
            decoration: CommonView.textFiledDecoration(StringRes.cndPassword),
          ),
        ),
      ],
    );
  }

  conFormPassWordView() {
    return Stack(
      children: <Widget>[
        Container(
            height: 50,
            decoration: new BoxDecoration(
                shape: BoxShape.rectangle,
                color: ColorRes.white,
                border: new Border.all(color: Colors.black, width: 1.0),
                borderRadius: BorderRadius.all(Radius.circular(8))),
            margin: EdgeInsets.symmetric(
                horizontal: Utils.getDeviceWidth(context) / 25)),
//          child:
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: Utils.getDeviceWidth(context) / 25),
          child: TextFormField(
            controller: passWordConfirmTextFiled,
            validator: validateConPassword,
            obscureText: true,
            decoration: CommonView.textFiledDecoration(StringRes.conformPassWord),
          ),
        ),
      ],
    );
  }


  String validateConPassword(String value) {
    if (value == null || value.isEmpty) {
      return 'Conform Password is empty';
    } else if (value.length < 6) {
      return 'Password must be more than 6 charater';
    } else if (value != passWordTextFiled.text)
      return 'Password not match';
    else
      return null;
  }

  void validateButton() {
    if (_formKey.currentState.validate()) {
//      addPasswordScreenNavigator(context);
      model.signUpAPi();
    }
  }
}
