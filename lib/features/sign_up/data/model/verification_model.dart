class VerificationModel {
  String? massage;
  bool? status;

  VerificationModel({ this.massage,this.status});

  VerificationModel.fromJson(Map<String, dynamic> json) {
    massage = json['massage'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['massage'] = this.massage;
    data['status'] = this.status;
    return data;
  }
}
