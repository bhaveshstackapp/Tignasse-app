import 'package:tignasseapp/export.dart';

class LoginViewModel {
  LoginScreenState state;

  LoginViewModel(LoginScreenState state) {
    this.state = state;
  }

  loginApi() {
    LoginRequest loginRequest = LoginRequest();
    loginRequest.email = state.emailTextFiled.text;
    loginRequest.password = state.passWordTextFiled.text;

    //login api
    showLoader(state.context,label: "");

    RestApi().callPostLogIn(loginRequest.toJson()).then((response) {

      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        LoginResponse loginResponse = LoginResponse.fromJson(data);
//        Utils.showToast(loginResponse.message);
        if (loginResponse.status == 1) {
//          verificationCodeScreenNavigator(state.context);
          Navigator.of(state.context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => WelComeScreen()), (Route<dynamic> route) => false);
        }

//        welComeScreenNavigator(state.context);
      }
    });
  }


}
