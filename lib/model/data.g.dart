// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
    json['error'] as String,
    json['status'] as bool,
  )..content = Content.fromJson(json['content'] as Map<String, dynamic>);
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'error': instance.error,
      'status': instance.status,
      'content': instance.content,
    };
