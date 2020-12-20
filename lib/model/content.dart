import 'package:json_annotation/json_annotation.dart';

part 'content.g.dart';

@JsonSerializable(nullable: false)
class Content {
  String name;
  int age;
  double height;

  Content({this.name, this.age, this.height});

  factory Content.fromJson(Map<String, dynamic> json) => _$ContentFromJson(json);

  Map<String, dynamic> toJson() => _$ContentToJson(this);
}