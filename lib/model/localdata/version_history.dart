import 'package:json_annotation/json_annotation.dart';

part 'version_history.g.dart';

@JsonSerializable(nullable: false)
class VersionHistory {
  String date;
  String version;
  List<String> desc;

  VersionHistory({this.date, this.version, this.desc});

  factory VersionHistory.fromJson(Map<String, dynamic> json) => _$VersionHistoryFromJson(json);

  Map<String, dynamic> toJson() => _$VersionHistoryToJson(this);
}