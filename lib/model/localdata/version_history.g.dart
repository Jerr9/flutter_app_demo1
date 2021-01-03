// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'version_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VersionHistory _$VersionHistoryFromJson(Map<String, dynamic> json) {
  return VersionHistory(
    date: json['date'] as String,
    version: json['version'] as String,
    desc: (json['desc'] as List).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$VersionHistoryToJson(VersionHistory instance) =>
    <String, dynamic>{
      'date': instance.date,
      'version': instance.version,
      'desc': instance.desc,
    };
