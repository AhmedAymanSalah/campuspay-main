class DepoistModel {
  final double balance;

  DepoistModel({required this.balance});

  factory DepoistModel.fromJson(Map<String, dynamic> json) {
    return DepoistModel(
      balance: json['balance'] ?? 0.0, // Adjust as per your JSON structure
    );
  }
}
