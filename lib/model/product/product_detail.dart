import 'package:json_annotation/json_annotation.dart';

part 'product_detail.g.dart';

@JsonSerializable()
class ProductDetail {
  int productId;
  String productName;
  String productIcon;
  String productDesc;
  double price;
  int categoryId;
  int isSale;
  int stock;
  DateTime createTime;
  DateTime updateTime;

  ProductDetail(
      this.productId,
      this.productName,
      this.productIcon,
      this.productDesc,
      this.price,
      this.categoryId,
      this.isSale,
      this.stock,
      this.createTime,
      this.updateTime
      );

  factory ProductDetail.fromJson(Map<String, dynamic> json) => _$ProductDetailFromJson(json);

  Map<String, dynamic> toJson() => _$ProductDetailToJson(this);
}