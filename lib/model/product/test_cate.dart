

import 'package:flutter_app_demo1/model/product/test_prod.dart';

class TestCate {
  int cateId;
  String cateName;
  List<TestProd> children;
  TestCate({this.cateId, this.cateName, this.children});
  factory TestCate.fromJson(Map<String, dynamic> json) {
    return TestCate(
      cateId: json['cateId'],
      cateName: json['cateName'],
      children: json['children'],
    );
  }
}