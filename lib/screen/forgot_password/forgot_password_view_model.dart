import 'package:tignasseapp/export.dart';

class ForgotPasswordViewModel {
  ForgotPasswordScreenState state;

  ForgotPasswordViewModel(ForgotPasswordScreenState state) {
    this.state = state;
  }

  forgotPasswordApi() {
    LoginRequest loginRequest = LoginRequest();
    loginRequest.email = state.passWordTextFiled.text;

    //login api
    RestApi().callGetForGotPassword(state.passWordTextFiled.text).then((response) {
      if (response.statusCode == 200) {
        var data = json.decode(response.body);
        ForgotPasswordResponse forgotPasswordResponse = ForgotPasswordResponse.fromJson(data);
        Utils.showToast(forgotPasswordResponse.message);
        forgotVerificationScreenNavigator(state.context, forgotPasswordResponse.code);
      }
    });
  }
}
