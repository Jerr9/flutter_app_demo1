import 'package:flutter_app_demo1/model/product/test_cate.dart';

class TestCateList {
  List<TestCate> children;
  TestCateList({this.children});
  factory TestCateList.fromJson(List json) {
    return TestCateList(
      children: json.map((ele) => TestCate.fromJson(ele)).toList(),
    );
  }
}