class BalanceModel {
  double? balance;

  BalanceModel(
      {this.balance,
      });

  BalanceModel.fromJson(Map<String, dynamic> json) {
    balance = json['balance'];
  }
}