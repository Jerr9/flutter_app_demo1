import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'dart:convert';

import 'package:flutter_app_demo1/model/data.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter APP",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "HomePageTitle"
          ),
        ),
        body: MyTextWidget2(),
      )
    )
  );
}

class MyTextWidget1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 44,
      color: Color(0xff318bf5),
      child: Text(
        "Hello world\nhello kugou \nhelloQQ\nhello WeChat",
        textDirection: TextDirection.ltr, // ltr: left to right, rtl: right to left
        style: TextStyle(
          color: Color(0xffffffff),
          fontSize: 22,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
      ),

    );
  }
}

class MyTextWidget2 extends StatefulWidget {
  @override
  State<MyTextWidget2> createState() {
    return MyTextWidget2State();
  }
}


class MyTextWidget2State extends State<MyTextWidget2> {

  List<Widget> getList() {
    List<Widget> res = [];
    List data = ['电脑', '手机', '相机', '衣服', '平板', '其他'];
    for(int i = 0; i < data.length; i++) {
      res.add(                Container(
        padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
        alignment: Alignment.center,
        child: Text(
          "品类-${data[i]}",
          style: TextStyle(
          ),
        ),
      ));
    }
    return res;
  }

  Future buildList() async {
    Dio dio = new Dio();
    // Uri uir = new Uri(host: "http://weixincs.midea.com/ccss-ipms-cis-rpc/uat/data/queryYbRecord?openId=oFtQywLXiiIJ5X52uxLYsYUSO22M");
    // Response res = await dio.get("http://weixincs.midea.com/ccss-ipms-cis-rpc/uat/data/queryYbRecord?openId=oFtQywLXiiIJ5X52uxLYsYUSO22M");
    Response res = await dio.get("http://192.168.56.1:8000/response.json");
    print(res.toString());
    print("-------------------------------------");
    Map map = jsonDecode(res.toString());
    print(map);
    Data data = Data.fromJson(map);
    print(data);
    print(data.status.runtimeType);
    print(data.error.runtimeType);
    print(data.content.runtimeType);
    print(data.content.name);
    print(data.content.age);
    print(data.content.height);
    print("-------------------------------------");
    // var map = jsonDecode(res.toString());

  }

  @override
  Widget build(BuildContext context) {
    buildList();
    return Container(
        child: Row(
          children: [
            Container(
              width: 100,
              color: Colors.pinkAccent,
              child: ListView(
                children: getList(),
              ),
            ),
            Expanded(
              // width: 300,
              // color: Colors.greenAccent,
                child: Container(
                    color: Colors.greenAccent,
                    child: ListView(

                      children: [
                        Container(
                          child: Text(
                            "电脑3",
                            style: TextStyle(

                            ),
                          ),
                        )
                      ],
                    )
                )
            )
          ],
        )
    );
  }
}