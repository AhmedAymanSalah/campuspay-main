class DepoistModel {
  double? balance;

  DepoistModel({this.balance});

  DepoistModel.fromJson(Map<String, dynamic> json) {
    balance = json['balance']?.toDouble();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['balance'] = balance;
    return data;
  }
}
