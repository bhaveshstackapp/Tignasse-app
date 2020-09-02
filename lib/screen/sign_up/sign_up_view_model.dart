import 'dart:convert';

import 'package:tignasseapp/export.dart';

class SignUpViewModel {
  SignUpScreenState state;

  SignUpViewModel(SignUpScreenState state) {
    this.state = state;
  }

  //Sign up Api

  signUpAPi() {
    RegisterRequest registerRequest = RegisterRequest();
    registerRequest.email = state.emailTextFiled.text;
    registerRequest.firstName = state.firstNameTextFiled.text;
    registerRequest.lastName = state.lastNameTextFiled.text;
    registerRequest.company = state.passWordTextFiled.text;
    registerRequest.password1 = state.passWordConfirmTextFiled.text;
    registerRequest.password2 = state.companyTextFiled.text;

    var dataMap = {
      "email" : state.emailTextFiled.text,
    "firstname": state.firstNameTextFiled.text,
    "lastname": state.lastNameTextFiled.text,
    "password1": state.passWordTextFiled.text,
    "password2": state.passWordConfirmTextFiled.text,
    "company": state.companyTextFiled.text
    };

    showLoader(state.context,label: "");

    RestApi().callPostSignUp(dataMap).then((response) {
      if (response != null) {
        var data = json.decode(response.body);
        RegisterResponse registerResponse = RegisterResponse.fromJson(data);

        if (registerResponse.status == 1) {
          Utils.showToast("User Register successfully.");
          Future.delayed(const Duration(milliseconds: 500), () {
//            welComeScreenNavigator(state.context);

          Navigator.of(state.context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (context) => WelComeScreen()),
              (Route<dynamic> route) => false);

          });
        } else {
          Utils.showToast(registerResponse.message);
        }
      }
    });
  }
}
