class LoginModel {
  String? type;
  String? token;
  String? massage;
  bool? status;

  LoginModel({this.type, this.token, this.massage,this.status});

  LoginModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    token = json['token'];
    massage = json['massage'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['token'] = this.token;
    data['massage'] = this.massage;
    data['status'] = this.status;
    return data;
  }
}
