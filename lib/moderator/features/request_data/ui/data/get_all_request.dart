class GetAllRequestModel {
  int? id;
  String? name;
  double? cost;
  String? type;
  String? status;

  GetAllRequestModel({this.id, this.name, this.cost, this.type, this.status});

  GetAllRequestModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    cost = json['cost'];
    type = json['type'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['cost'] = this.cost;
    data['type'] = this.type;
    data['status'] = this.status;
    return data;
  }
}
