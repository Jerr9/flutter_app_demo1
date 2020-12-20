// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'content.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Content _$ContentFromJson(Map<String, dynamic> json) {
  return Content(
    name: json['name'] as String,
    age: json['age'] as int,
    height: (json['height'] as num).toDouble(),
  );
}

Map<String, dynamic> _$ContentToJson(Content instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'height': instance.height,
    };
