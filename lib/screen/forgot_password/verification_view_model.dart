import 'package:tignasseapp/export.dart';

class ForgotVerificationViewModel {
  ForgotVerificationScreenState  state;

  ForgotVerificationViewModel(ForgotVerificationScreenState state) {
    this.state = state;
  }



/*loginApi() {
    LoginRequest loginRequest = LoginRequest();
    loginRequest.email = state.emailTextFiled.text;
    loginRequest.password = state.passWordTextFiled.text;

    //login api
    RestApi().callPostLogIn(loginRequest.toJson()).then((response) {
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        LoginResponse loginResponse = LoginResponse.fromJson(data);
        Utils.showToast(loginResponse.message);
      }
    });
  }*/
}
