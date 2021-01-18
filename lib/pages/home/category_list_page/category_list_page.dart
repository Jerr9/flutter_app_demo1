import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/model/product/category_model.dart';
import 'package:flutter_app_demo1/pages/home/category_list_page/components/category_list.dart';
import 'package:flutter_app_demo1/pages/home/category_list_page/components/product_list.dart';

class CategoryListPage extends StatefulWidget {
  @override
  CategoryListPageState createState() => CategoryListPageState();
}

class CategoryListPageState extends State<CategoryListPage> {
  int categoryIndex = 0;
  List list = [
    {
      "categoryId": 10,
      "categoryName": "手机",
      "categoryDesc": "手机设备",
      "categoryIcon": "",
      "createTime": null,
      "updateTime": null,
      "children": [
        {
          "productId": 100001,
          "productName": "iPhone12",
          "productIcon": "",
          "productDesc": "Apple iPhone12 64GB",
          "price": 6499.00,
          "categoryId": 10,
          "isSale": 1,
          "stock": 99,
          "createTime": null,
          "updateTime": null
        }
      ]
    },
    {
      "categoryId": 11,
      "categoryName": "电脑",
      "categoryDesc": "PC、MAC等微机",
      "categoryIcon": "",
      "createTime": null,
      "updateTime": null,
      "children": [
        {
          "productId": 100002,
          "productName": "ThinkPad X1 Carbon",
          "productIcon": "",
          "productDesc": "ThinkPad X1 Carbon i7-10710U 16GB 1TB SSD",
          "price": 12999.00,
          "categoryId": 11,
          "isSale": 1,
          "stock": 99,
          "createTime": null,
          "updateTime": null
        }
      ]
    },
    {
      "categoryId": 12,
      "categoryName": "相机",
      "categoryDesc": "各式相机",
      "categoryIcon": "",
      "createTime": null,
      "updateTime": null,
      "children": [
        {
          "productId": 100003,
          "productName": "SONY A7",
          "productIcon": "",
          "productDesc": "SONY A7 800M",
          "price": 16999.00,
          "categoryId": 12,
          "isSale": 1,
          "stock": 99,
          "createTime": null,
          "updateTime": null
        }
      ]
    }
  ];

  void getInitData () async {
    try {
      Response<dynamic> res = await Dio().post(
        "localhost:8090/product/list",
        queryParameters: {}
      );
      print('---------------x---------- $res');
    } catch(e) {
      print(e);
    }
  }

  @override
  void initState() {
    super.initState();
    getInitData();
    // print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
  }


  @override
  Widget build(BuildContext context) {
    print(list[categoryIndex]);
    return Stack(
      children: [
        Flex(
          direction: Axis.horizontal,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryList(
              list: list,
              activeIndex: categoryIndex,
              onChange: (newIndex) {
                print(newIndex);
                print("===========================================");
                setState(() {
                  this.categoryIndex = newIndex;
                });
              }
            ),
            ProductList(list: list[categoryIndex]['children'],
              onChange: (map) {
                print(map);
              },
            ),
          ],
        ),
      ],
    );
  }
}