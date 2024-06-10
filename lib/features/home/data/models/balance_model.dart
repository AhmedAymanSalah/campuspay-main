class BalanceModel {
  double? balance;

  BalanceModel(
      {this.balance,
      });

  BalanceModel.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['balance'] = this.balance;
    return data;
  }
}