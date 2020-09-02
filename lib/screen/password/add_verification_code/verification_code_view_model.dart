import 'package:tignasseapp/export.dart';

class VerifyPasswordViewModel {
  VerificationCodeScreenState  state;

  VerifyPasswordViewModel(VerificationCodeScreenState state) {
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


  verifyCodeApi() {

    String setFiledName = state.passWordVerificationTextFiled.text;

    String firstFour = setFiledName.substring(0,4);
    String secondFour = setFiledName.substring(4,8);
    String thirdFour = setFiledName.substring(8,12);

    String subString =  firstFour + "-" + secondFour + "-" + thirdFour;


    var mapData = {
      "action":"verify",
      "code": subString,
    };

    showLoader(state.context,label: "");
    RestApi().callPostVerifyAfterRegister(mapData).then((response) {
      if (response.statusCode == 200) {
//        var data = ;

        VerifyResponse loginResponse = VerifyResponse.fromJson(json.decode(response.body));
        if(loginResponse.status == 1) {
          Utils.showToast(loginResponse.message);
        } else {
          Utils.showToast("Unknow Code");
        }
      }
    });
  }

  reSendCodeApi() {

  /*  var mapData = {
      "action":"resend",
      "user_id": state.widget.userId.toString(),
    };*/

    ReNewRequest rq = ReNewRequest();
    rq.userId = state.widget.userId.toString();
    rq.action = "resend";
    showLoader(state.context,label: "");

    RestApi().callPostReSendReNewDesConnect(rq.toJson()).then((response) {
      if (response.statusCode == 200) {
        VerifyResponse verifyResponse = VerifyResponse.fromJson(json.decode(response.body));
        if(verifyResponse .status == 1) {
          Utils.showToast(verifyResponse.message);
        } else {
          Utils.showToast("Unknow Code");
        }
      }
    });
  }

  reNewCodeApi() {

    ReNewRequest rq = ReNewRequest();
    rq.userId = state.widget.userId.toString();
    rq.action = "renew";

    showLoader(state.context,label: "");

    RestApi().callPostReSendReNewDesConnect(rq.toJson()).then((response) {
      if (response.statusCode == 200) {
        VerifyResponse verifyResponse = VerifyResponse.fromJson(json.decode(response.body));
        if(verifyResponse.status != null && verifyResponse.status == 1) {
          Utils.showToast(verifyResponse.message);
        } else {
          Utils.showToast("Unknow Code");
        }
      }
    });
  }

  disconnectUserApi() {

    ReNewRequest rq = ReNewRequest();
    rq.userId = state.widget.userId.toString();
    rq.action = "disconnect";
    showLoader(state.context,label: "");

    RestApi().callPostReSendReNewDesConnect(rq.toJson()).then((response) {
      if (response.statusCode == 200) {
        VerifyResponse verifyResponse = VerifyResponse.fromJson(json.decode(response.body));
        if(verifyResponse.status != null && verifyResponse.status == 1) {
          Utils.showToast(verifyResponse.message);
          Navigator.pop(state.context);
          Navigator.pop(state.context);
//          Navigator.of(state.context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => LoginScreen()), (Route<dynamic> route) => false);
        } else {
          Utils.showToast("Unknow Code");
        }
      }
    });
  }


}
