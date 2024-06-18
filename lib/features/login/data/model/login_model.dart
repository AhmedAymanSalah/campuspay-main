class LoginModel {
  String? type;
  String? token;
  String? message;
  bool? status;

  LoginModel({this.type, this.token, this.message,this.status});

  LoginModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    token = json['token'];
    message = json['message'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['token'] = this.token;
    data['message'] = this.message;
    data['status'] = this.status;
    return data;
  }
}
