class RegisterRequest {
  String email;
  String firstName;
  String lastName;
  String password1;
  String password2;
  String company;

  RegisterRequest(
      {this.email,
        this.firstName,
        this.lastName,
        this.password1,
        this.password2,
        this.company});

  RegisterRequest.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    firstName = json['firstname'];
    lastName = json['lastname'];
    password1 = json['password1'];
    password2 = json['password2'];
    company = json['company'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['firstname'] = this.firstName;
    data['lastname'] = this.lastName;
    data['password1'] = this.password1;
    data['password2'] = this.password2;
    data['company'] = this.company;
    return data;
  }
}

//class RegisterResponse {
//  String message;
//
//  RegisterResponse({this.message});
//
//  RegisterResponse.fromJson(Map<String, dynamic> json) {
//    message = json['message'];
//  }
//
//  Map<String, dynamic> toJson() {
//    final Map<String, dynamic> data = new Map<String, dynamic>();
//    data['message'] = this.message;
//    return data;
//  }
//}

class RegisterResponse {
  int userId;
  String profileId;
  int status;
  String message;

  RegisterResponse({this.userId, this.profileId, this.status, this.message});

  RegisterResponse.fromJson(Map<String, dynamic> json) {
    userId = json['user_id'];
    profileId = json['profile_id'];
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user_id'] = this.userId;
    data['profile_id'] = this.profileId;
    data['status'] = this.status;
    data['message'] = this.message;

    return data;
  }
}


