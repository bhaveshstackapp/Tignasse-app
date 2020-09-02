class ForgotPasswordResponse {
  String userId;
  int status;
  int code;
  String message;
  UserData userData;

  ForgotPasswordResponse(
      {this.userId, this.status, this.code, this.message, this.userData});

  ForgotPasswordResponse.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    status = json['status'];
    code = json['code'];
    message = json['message'];
    userData = json['user_data'] != null
        ? new UserData.fromJson(json['user_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['status'] = this.status;
    data['code'] = this.code;
    data['message'] = this.message;
    if (this.userData != null) {
      data['user_data'] = this.userData.toJson();
    }
    return data;
  }
}

class UserData {
  String userId;
  String firstaName;
  String lastName;
  String email;

  UserData({this.userId, this.firstaName, this.lastName, this.email});

  UserData.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    firstaName = json['firstaName'];
    lastName = json['lastName'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['firstaName'] = this.firstaName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    return data;
  }
}
