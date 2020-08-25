import 'package:tignasseapp/export.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {


  TextEditingController emailTextFiled = TextEditingController();
  TextEditingController passWordTextFiled = TextEditingController();

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
              AllText(StringRes.tignasse, fontSize: Utils.getDeviceWidth(context) / 13),

              CommonView.sizeBoxHeight(context, 25),
              AllText(StringRes.iRegister, fontSize: Utils.getDeviceWidth(context) / 25, color: ColorRes.white),

              AllText(StringRes.createCustom, fontSize: Utils.getDeviceWidth(context) / 33, color: ColorRes.white),

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
              FilledButton(
                  text: StringRes.validate,
                  fontSize: Utils.getDeviceWidth(context) / 23),

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
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      margin: EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: emailTextFiled,
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
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      margin: EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: emailTextFiled,
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
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      margin: EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: emailTextFiled,
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
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      margin: EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: emailTextFiled,
        decoration: CommonView.textFiledDecoration(StringRes.email),

      ),
    );
  }

  passWordView() {
    return Container(
      decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: ColorRes.white,
          border: new Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      margin: EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: passWordTextFiled,
        decoration: CommonView.textFiledDecoration(StringRes.password),
      ),
    );
  }

  conFormPassWordView() {
    return Container(
      decoration: new BoxDecoration(
          shape: BoxShape.rectangle,
          color: ColorRes.white,
          border: new Border.all(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8))
      ),
      margin: EdgeInsets.symmetric(horizontal: Utils.getDeviceWidth(context) / 25),
      child: TextFormField(
        controller: passWordTextFiled,
        decoration: CommonView.textFiledDecoration(StringRes.conformPassWord),
      ),
    );
  }

}
