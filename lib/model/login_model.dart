class LoginRequest {
  String email;
  String password;

  LoginRequest({this.email, this.password});

  LoginRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    return data;
  }
}

class LoginResponse {
  String userId;
  int status;
  String message;

  LoginResponse({this.userId, this.status, this.message});

  LoginResponse.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['status'] = this.status;
    data['message'] = this.message;
    return data;
  }
}

