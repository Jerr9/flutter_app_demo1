// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProductDetail _$ProductDetailFromJson(Map<String, dynamic> json) {
  return ProductDetail(
    json['productId'] as int,
    json['productName'] as String,
    json['productIcon'] as String,
    json['productDesc'] as String,
    (json['price'] as num)?.toDouble(),
    json['categoryId'] as int,
    json['isSale'] as int,
    json['stock'] as int,
    json['createTime'] == null
        ? null
        : DateTime.parse(json['createTime'] as String),
    json['updateTime'] == null
        ? null
        : DateTime.parse(json['updateTime'] as String),
  );
}

Map<String, dynamic> _$ProductDetailToJson(ProductDetail instance) =>
    <String, dynamic>{
      'productId': instance.productId,
      'productName': instance.productName,
      'productIcon': instance.productIcon,
      'productDesc': instance.productDesc,
      'price': instance.price,
      'categoryId': instance.categoryId,
      'isSale': instance.isSale,
      'stock': instance.stock,
      'createTime': instance.createTime?.toIso8601String(),
      'updateTime': instance.updateTime?.toIso8601String(),
    };
