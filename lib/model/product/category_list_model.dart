import 'package:flutter_app_demo1/model/product/category_model.dart';

class CategoryListModel {
  List<CategoryModel> list;

  CategoryListModel(this.list);

  factory CategoryListModel.fromJsonList(List list) {
    return CategoryListModel(
      list.map((element) => CategoryModel.fromJson(element)).toList()
    );
  }
}