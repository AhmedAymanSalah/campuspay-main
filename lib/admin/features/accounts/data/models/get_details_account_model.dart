class GetDetailAccountModel {
  String? id;
  String? fullName;
  String? email;
  Null filePath;
  String? ssn;

  GetDetailAccountModel(
      {this.id, this.fullName, this.email, this.filePath, this.ssn});

  GetDetailAccountModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['fullName'];
    email = json['email'];
    filePath = json['filePath'];
    ssn = json['ssn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['fullName'] = this.fullName;
    data['email'] = this.email;
    data['filePath'] = this.filePath;
    data['ssn'] = this.ssn;
    return data;
  }
}
