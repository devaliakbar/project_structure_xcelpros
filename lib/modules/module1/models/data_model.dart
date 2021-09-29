class DataModel {
  String name;

  DataModel({required this.name});

  factory DataModel.fromJson(Map<String, dynamic> json) {
    return DataModel(name: json['name']);
  }
}
