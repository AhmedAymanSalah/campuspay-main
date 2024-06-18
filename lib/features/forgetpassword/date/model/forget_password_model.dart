class ForgetPasswordModel {
  String? userId;
  String? message;

  ForgetPasswordModel({this.userId, this.message});

  ForgetPasswordModel.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['message'] = this.message;
    return data;
  }
}
