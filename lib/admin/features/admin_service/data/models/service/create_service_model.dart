class GetDetailsModel {
  final int? id;
  final String? name;
  final String? description;
  final String? type;
  final double? cost; // Updated type
  final int? squadYear; // Updated type
  final String? collegeName;
  final String? icon;
  final String? fileName;
  final String? filePath;

  GetDetailsModel(
      {this.id,
        this.name,
        this.description,
        this.type,
        this.cost,
        this.squadYear,
        this.collegeName,
        this.icon,
        this.fileName,
        this.filePath});

  factory GetDetailsModel.fromJson(Map<String, dynamic> json) {
    return GetDetailsModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      type: json['type'] as String?,
      cost: (json['cost'] as num?)?.toDouble(),
      squadYear: json['squadYear'] as int?,
      collegeName: json['collegeName'] as String?,
      icon: json['icon'] as String?,
      fileName: json['fileName'] as String?,
      filePath: json['filePath'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['type'] = this.type;
    data['cost'] = this.cost;
    data['squadYear'] = this.squadYear;
    data['collegeName'] = this.collegeName;
    data['icon'] = this.icon;
    data['fileName'] = this.fileName;
    data['filePath'] = this.filePath;
    return data;
  }
}
