
import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:banner/banner.dart';
class ShoppingHomePage extends StatefulWidget {
  @override
  ShoppingHomePageState createState() => ShoppingHomePageState();
}

class ShoppingHomePageState extends State<ShoppingHomePage> {

  List bannerDataList = [];

  Future<List<String>> _getBanner() async {
    const url = 'https://weixin.midea.com/css-xyj/product/getProductList4Menu?typeCode=NXYJ&channelCode=MIDEA';
    try {
      Response res = await Dio().get(url);
      print(res);
      print(res.data.toString());
      return [
            'https://filecmms.midea.com/ccrm-prod/productImg/1006美的洗衣机.jpg',
            'https://filecmms.midea.com/ccrm-prod/productImg/1004美的冰柜.jpg',
            'https://filecmms.midea.com/ccrm-prod/productImg/1003小天鹅冰箱.jpg',
          ];
    } catch (e) {
      print(e);
      throw(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          Container(
            child: FutureBuilder(
              future: this._getBanner(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                print('----------------------');
                // print(snapshot.data);
                print(snapshot.hasError);
                print('----------------------');
                print(ConnectionState);
                print(this.bannerDataList);
                if (snapshot.connectionState == ConnectionState.done) {
                  if (snapshot.hasError) {
                    return Text("Error");
                  }
                  else {
                    return BannerView(
                      data: snapshot.data,
                      buildShowView: (index, data) {
                        print(data);
                        return Image.network(data, errorBuilder: (BuildContext b, Object o, StackTrace st) => Image.network("http://weixin.midea.com/css-xyj/imgage/product/xyj/spu/ico-hanging-air-conditioner.png"));
                      },
                      onBannerClickListener: (index, data){
                        print(index);
                      },
                    );
                  }
                }
                else {
                  return Text("loading");
                }
              },
            ),
          ),
          Text("ShoppingHomePage")
        ],
      ),
    );
  }
}