class GetProfileModel {
  String? picture;
  String? email;
  String? fullName;
  String? ssn;
  String? userId;

  GetProfileModel(
      {this.picture, this.email, this.fullName, this.ssn, this.userId});

  GetProfileModel.fromJson(Map<String, dynamic> json) {
    picture = json['picture'];
    email = json['email'];
    fullName = json['fullName'];
    ssn = json['ssn'];
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['picture'] = this.picture;
    data['email'] = this.email;
    data['fullName'] = this.fullName;
    data['ssn'] = this.ssn;
    data['userId'] = this.userId;
    return data;
  }
}
