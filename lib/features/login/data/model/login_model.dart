class LoginModel {
  String? type;
  String? token;
  String? massage;

  LoginModel({this.type, this.token, this.massage});

  LoginModel.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    token = json['token'];
    massage = json['massage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['token'] = this.token;
    data['massage'] = this.massage;
    return data;
  }
}
