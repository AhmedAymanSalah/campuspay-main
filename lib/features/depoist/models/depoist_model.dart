

class DepoistModel {
  double? balance;
 

  DepoistModel({this.balance,});

  DepoistModel.fromJson(Map<String, double> json) {
    balance = json['balance'];
   
  }

  Map<String, double> toJson() {
    final Map<String, double> data = <String, double>{};
    data['balance'] = balance!;
   
    return data;
  }
}
