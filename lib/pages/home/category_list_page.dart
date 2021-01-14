

import 'package:flutter/material.dart';

class CategoryListPage extends StatefulWidget {
  @override
  CategoryListPageState createState() => CategoryListPageState();
}

class CategoryListPageState extends State<CategoryListPage> {

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

  @override
  void initState() {
    super.initState();
    print("xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");

  }


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Flex(
          direction: Axis.horizontal,
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 100,
              decoration: BoxDecoration(
                border: Border(right: BorderSide(
                  width: 1,
                  color: Color(0xeaeaeaea),
                  style: BorderStyle.solid,
                )),
              ),
              child: CategoryList(list: this.list),
            ),
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                  Container(child: Text("product 1"),),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CategoryList extends StatefulWidget {
  @override
  CategoryListState createState() => CategoryListState(defaultActive);

  final List list;

  final int defaultActive;

  CategoryList({@required this.list, this.defaultActive = 0});
}

class CategoryListState extends State<CategoryList> {

  int _defaultActive = 0;

  CategoryListState(this._defaultActive);

  Widget buildWidget(List list) {

    List<Widget> resultList = list.asMap().keys.map((idx) {
      print(list[idx]);
      print("element");
      return (
        Container(
          child: InkWell(
            child: Text('${list[idx]['categoryName']}',
              style: TextStyle(
                fontSize: 14,
              ),
              textAlign: TextAlign.center,
            ),
            onTap: () {
              setState(() {
                print(idx);
                _defaultActive = idx;
              });
            },
          ),
          padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
          width: 100,
          color: widget.defaultActive == idx ? Colors.redAccent : null,
        )
      );
    }).toList();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: resultList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return this.buildWidget(widget.list);
  }
}