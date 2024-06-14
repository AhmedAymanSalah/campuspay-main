class GetServiceModel {
  final int id;
  final String? filePath;
  final String name;

  GetServiceModel({
    required this.id,
    required this.filePath,
    required this.name,
  });

  factory GetServiceModel.fromJson(Map<String, dynamic> json) {
    return GetServiceModel(
      id: json['id'],
      filePath: json['filePath'],
      name: json['name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'filePath': filePath,
      'name': name,
    };
  }
}

// // class GetServiceModel {
// //   List<Data>? data;
// //
// //   GetServiceModel({this.data});
// //
// //   GetServiceModel.fromJson(Map<String, dynamic> json) {
// //     if (json[''] != null) {
// //       data = <Data>[];
// //       json[''].forEach((v) {
// //         data!.add(new Data.fromJson(v));
// //       });
// //     }
// //   }
// // }
//
// class GetServiceModel{
//   int? id;
//   String? name;
//
//   GetServiceModel({this.id, this.name});
//
//   GetServiceModel.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//   }
//
//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     return data;
//   }
// }