import 'package:flutter_app_demo1/model/product/product_detail.dart';
import 'package:json_annotation/json_annotation.dart';

part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  int categoryId;
  String categoryName;
  String categoryDesc;
  String categoryIcon;
  DateTime createTime;
  DateTime updateTime;
  List<ProductDetail> children;

  CategoryModel(
    this.categoryId,
    this.categoryName,
    this.categoryDesc,
    this.categoryIcon,
    this.createTime,
    this.updateTime,
    this.children
  );

  factory CategoryModel.fromJson(Map<String, dynamic> json) => _$CategoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}

