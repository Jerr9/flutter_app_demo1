import 'package:flutter_app_demo1/model/content.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable(nullable: false)
class Data {
  String error;
  bool status;
  Content content;
  Data(this.error, this.status);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}