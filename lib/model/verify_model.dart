class VerifyResponse {
  int status;
  String message;
  String action;
  String userId;

  VerifyResponse({this.status, this.message, this.action, this.userId});

  VerifyResponse.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    action = json['action'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    data['action'] = this.action;
    data['user_id'] = this.userId;
    return data;
  }
}

class ReNewRequest {
  String action;
  String userId;

  ReNewRequest({this.action, this.userId});

  ReNewRequest.fromJson(Map<String, dynamic> json) {
    action = json['action'];
    userId = json['user_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['action'] = this.action;
    data['user_id'] = this.userId;
    return data;
  }
}

