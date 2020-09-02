import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;

import '../../common/util.dart';

class RestApi {
  static const baseUrl = "http://dev.tignasse.fr/api/";
  static const loginUrl = 'UserLogin';
  static const signUpUrl = 'UserRegister';
  static const forGotPwdEmlOtp = 'ForgotpwdEmlOtp';
  static const imgUrl = 'MobBgImages';
  var uname = "appapi@kartpay.com";
  var pwd = "748U576698230O10m47Dm39040FA6l4G";

//bgImage
  Future<Response> callGetImage() async {
    final String auth = 'Basic ' + base64Encode(utf8.encode('$uname:$pwd'));
    Response response;
    String url = (baseUrl + imgUrl);
    print("Get Image: - ${url}" + auth);

    try {
      response = await http.get(url, headers: {'Authorization': auth});
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        return response;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      Utils.showToast(e.toString());
      return null;
    }
  }

//signup
  Future<Response> callPostSignUp(Map<String, dynamic> jsonMap) async {
    final String auth = 'Basic ' + base64Encode(utf8.encode('$uname:$pwd'));
    print("Sign Up: - ${baseUrl + jsonMap.toString()}" + auth);
    Response response;
    String url = (baseUrl + signUpUrl);
    try {
      response = await http.post(url, body: jsonMap, headers: {'Authorization': auth});
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
        hideLoader();
        return response;
      } else {
        hideLoader();
        return null;
      }
    } catch (e) {
      print(e);
      Utils.showToast(e.toString());
      return null;
    }
  }

//login
  Future<Response> callPostLogIn(Map<String, dynamic> jsonMap) async {
    final String auth = 'Basic ' + base64Encode(utf8.encode('$uname:$pwd'));
    print("Login: - ${baseUrl + jsonMap.toString()}" + auth);
    Response response;
    String url = (baseUrl + loginUrl);
    try {
      response =
      await http.post(url, body: jsonMap, headers: {'Authorization': auth});
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
      }
      if (response != null) {
        print(response.body);
        hideLoader();
        return response;
      } else {
        hideLoader();
        return null;
      }
    } catch (e) {
      print(e);
      hideLoader();
      Utils.showToast(e.toString());
      return null;
    }
  }

  //login
  Future<Response> callGetForGotPassword(String passWordText) async {
    final String auth = 'Basic ' + base64Encode(utf8.encode('$uname:$pwd'));
    print("forgotpassword : - ${baseUrl}" + auth);
    Response response;
    String url = (baseUrl + forGotPwdEmlOtp + "?auth_data=$passWordText");
    try {
      response =
      await http.get(url, headers: {'Authorization': auth});
      if (response.statusCode == 200 || response.statusCode == 201) {
        print(response.body);
      }
      if (response != null) {
        print(response.body);
        return response;
      } else {
        return null;
      }
    } catch (e) {
      print(e);
      Utils.showToast(e.toString());
      return null;
    }
  }

}