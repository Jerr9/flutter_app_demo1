// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) {
  return CategoryModel(
    json['categoryId'] as int,
    json['categoryName'] as String,
    json['categoryDesc'] as String,
    json['categoryIcon'] as String,
    json['createTime'] == null
        ? null
        : DateTime.parse(json['createTime'] as String),
    json['updateTime'] == null
        ? null
        : DateTime.parse(json['updateTime'] as String),
    (json['children'] as List)
        ?.map((e) => e == null
            ? null
            : ProductDetail.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'categoryId': instance.categoryId,
      'categoryName': instance.categoryName,
      'categoryDesc': instance.categoryDesc,
      'categoryIcon': instance.categoryIcon,
      'createTime': instance.createTime?.toIso8601String(),
      'updateTime': instance.updateTime?.toIso8601String(),
      'children': instance.children,
    };
