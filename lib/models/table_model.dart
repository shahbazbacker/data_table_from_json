import 'dart:convert';

List<TableModel> tableModelFromJson(String str) => List<TableModel>.from(json.decode(str).map((x) => TableModel.fromJson(x)));

String tableModelToJson(List<TableModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class TableModel {
  final String name;
  final String age;
  final String gender;

  TableModel({
    required this.name,
    required this.age,
    required this.gender,
  });

  factory TableModel.fromJson(Map<String, dynamic> json) => TableModel(
    name: json["name"],
    age: json["age"],
    gender: json["gender"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "age": age,
    "gender": gender,
  };
}
