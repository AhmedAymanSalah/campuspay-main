class SignUpModel {
  String? userId;
  String? massage;

  SignUpModel({this.userId, this.massage});

  SignUpModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    massage = json['massage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['massage'] = this.massage;
    return data;
  }
}
