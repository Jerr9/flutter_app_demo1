
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:banner/banner.dart';
class ShoppingHomePage extends StatefulWidget {
  @override
  ShoppingHomePageState createState() => ShoppingHomePageState();
}

class ShoppingHomePageState extends State<ShoppingHomePage> {

  List<String> bannerDataList = [];
  String searchText = '';
  String tempSearchText = '';

  _getBanner() async {
    const url = 'https://weixin.midea.com/css-xyj/product/getProductList4Menu?typeCode=NXYJ&channelCode=MIDEA';
    try {
      Response res = await Dio().get(url);
      print(res);
      print(res.data.toString());
      setState(() {
        this.bannerDataList = [
          'https://filecmms.midea.com/ccrm-prod/productImg/1006美的洗衣机.jpg',
          'https://filecmms.midea.com/ccrm-prod/productImg/1004美的冰柜.jpg',
          'https://filecmms.midea.com/ccrm-prod/productImg/1003小天鹅冰箱.jpg',
        ];
      });
      // return [
      //   'https://filecmms.midea.com/ccrm-prod/productImg/1006美的洗衣机.jpg',
      //   'https://filecmms.midea.com/ccrm-prod/productImg/1004美的冰柜.jpg',
      //   'https://filecmms.midea.com/ccrm-prod/productImg/1003小天鹅冰箱.jpg',
      // ];
    } catch (e) {
      print(e);
      throw(e);
    }
  }

  @override
  void initState() {
    super.initState();
    print("---------------------------------------------------------" "xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
    this._getBanner();

    Future.delayed(Duration(milliseconds: 8000), () {
      setState(() {
        this.bannerDataList = [
          'https://filecmms.midea.com/ccrm-prod/productImg/1006美的洗衣机.jpg?123',
          'https://filecmms.midea.com/ccrm-prod/productImg/1004美的冰柜.jpg?123',
          'https://filecmms.midea.com/ccrm-prod/productImg/1003小天鹅冰箱.jpg?123',
        ];
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Flex(
            direction: Axis.horizontal,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 0, bottom: 0),
                  color: Colors.redAccent,
                  child: Container(
                    child: TextField(
                      controller: TextEditingController(
                        text: this.searchText,
                      ),
                      onEditingComplete: () {
                        setState(() {
                          this.searchText = this.tempSearchText;
                        });
                      },
                      onChanged: (value) {
                        print(value);
                        print(this.searchText);
                        this.tempSearchText = value;
                      },
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(0),
                        hintText: "搜索产品",
                        labelStyle: TextStyle(
                          color: Color(0xffffffff),
                        ),
                        border: InputBorder.none,
                        fillColor: Colors.black38,
                        hintStyle: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                      cursorColor: Colors.black38,
                      style: TextStyle(
                        textBaseline: TextBaseline.alphabetic,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                child: Icon(
                  Icons.crop_free,
                ),
                padding: EdgeInsets.only(left: 15, right: 10, top: 0, bottom: 0),
                color: Colors.redAccent,
                height: 48,
              ),
            ],
          ),
          BannerComp(this.bannerDataList),
          Container(
            child: BannerView(
              data: this.bannerDataList,
              buildShowView: (index, data) {
                // print(data);
                return Image.network(data, errorBuilder: (BuildContext b, Object o, StackTrace st) => Image.network("http://weixin.midea.com/css-xyj/imgage/product/xyj/spu/ico-hanging-air-conditioner.png"));
              },
              onBannerClickListener: (index, data){
                // print(index);
              },

            ),
          ),
          Text("ShoppingHomePage")
        ],
      ),
    );
  }
}


class BannerComp extends StatefulWidget {
  @override
  State createState() => BannerCompState();

  final List<String> data;

  BannerComp(this.data);
}

class BannerCompState extends State<BannerComp> {

  @override
  Widget build(BuildContext context) {
    print(widget.data);
    print("xxx9999");
    return BannerView(
      data: widget.data,
      buildShowView: (index, data) {
        // print(data);
        return Image.network(data, errorBuilder: (BuildContext b, Object o, StackTrace st) => Image.network("http://weixin.midea.com/css-xyj/imgage/product/xyj/spu/ico-hanging-air-conditioner.png"));
      },
      onBannerClickListener: (index, data){
        // print(index);
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("x: didChangeDependencies");
  }
}

