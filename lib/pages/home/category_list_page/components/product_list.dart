import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/model/product/category_model.dart';
import 'package:flutter_app_demo1/model/product/product_detail.dart';

class ProductList extends StatefulWidget {
  final List list;
  final ValueChanged<Map<String, dynamic>> onChange;

  ProductList({Key key, @required this.list, @required this.onChange});

  @override
  State createState() => ProductListState();
}

class ProductListState extends State<ProductList> {

  List<Widget> _getProductWidgets(List list) {
    List<Widget> res = [];
    list.forEach((model) {
      res.add(
        InkWell(
          child: Column(
            // child: Text(ele['productName']),
            children: [
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
              Text(list[0]['productName']),
            ],
          ),
          onTap: () {
            widget.onChange({"name": "1"});
          },
        )
      );
    });
    return res;
  }


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        height: 300,
        child: ListView(
          children: this._getProductWidgets(widget.list),
        ),
      ),
    );
  }
}