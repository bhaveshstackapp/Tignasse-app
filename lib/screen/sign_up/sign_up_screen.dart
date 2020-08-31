import 'package:tignasseapp/export.dart';
import 'package:tignasseapp/services/rest_api/rest_api.dart';

import '../../common/util.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailTextFiled = TextEditingController();
  TextEditingController passWordTextFiled = TextEditingController();
  TextEditingController firstNameTextFiled = TextEditingController();
  TextEditingController lastNameTextFiled = TextEditingController();
  TextEditingController passWordConfirmTextFiled = TextEditingController();
  TextEditingController companyTextFiled = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Stack(
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
                  addPasswordScreenNavigator(context);
                  var signMap = {
                    "email": emailTextFiled.text,
                    "firstname": firstNameTextFiled.text,
                    "lastname": lastNameTextFiled.text,
                    "password1": passWordTextFiled.text,
                    "password2": passWordConfirmTextFiled.text,
                    "company": companyTextFiled.text
                  };
                  //signup api
                  RestApi().callPostSignUp(signMap).then((value) {
                    if (value.statusCode == 200) {
                      Utils.showToast(value.body);
                      print(value.body);
                      Future.delayed(const Duration(milliseconds: 500), () {
                        welComeScreenNavigator(context);
                      });
                    }
                  });
                },
              ),
              CommonView.sizeBoxHeight(context, 35),
            ],
          ),
        )
      ],
    )));
  }

  firstNameView() {
    return Container(
      decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: ColorRes.white,
          border: new Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin:
          EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: firstNameTextFiled,
        decoration: CommonView.textFiledDecoration(StringRes.firstName),
      ),
    );
  }

  lastNameView() {
    return Container(
      decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: ColorRes.white,
          border: new Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin:
          EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: lastNameTextFiled,
        decoration: CommonView.textFiledDecoration(StringRes.lastName),
      ),
    );
  }

  companyNameView() {
    return Container(
      decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: ColorRes.white,
          border: new Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin:
          EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: companyTextFiled,
        decoration: CommonView.textFiledDecoration(StringRes.company),
      ),
    );
  }

  emailView() {
    return Container(
      decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: ColorRes.white,
          border: new Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin:
          EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: emailTextFiled,
        decoration: CommonView.textFiledDecoration(StringRes.cndEmail),
      ),
    );
  }

  passWordView() {
    return Container(
      decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: ColorRes.white,
          border: new Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin:
          EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: passWordTextFiled,
        decoration: CommonView.textFiledDecoration(StringRes.cndPassword),
      ),
    );
  }

  conFormPassWordView() {
    return Container(
      decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: ColorRes.white,
          border: new Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))),
      margin:
          EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: passWordConfirmTextFiled,
        decoration: CommonView.textFiledDecoration(StringRes.conformPassWord),
      ),
    );
  }
}
