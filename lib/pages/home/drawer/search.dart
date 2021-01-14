import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/pages/popular_page.dart';
import 'package:flutter_app_demo1/pages/recommend_page.dart';
import 'package:flutter_app_demo1/pages/western_page.dart';

class SearchPage extends StatefulWidget {

  @override
  SearchPageState createState() => SearchPageState();
}

class _TabData {
  final Widget tab;
  final Widget body;
  _TabData({this.tab, this.body});
}

final _tabDataList = <_TabData> [
  _TabData(tab: Text("推荐"), body: RecommendPage()),
  _TabData(tab: Text("推荐2"), body: RecommendPage()),
  _TabData(tab: Text("推荐3"), body: RecommendPage()),
];

class SearchPageState extends State<SearchPage> with SingleTickerProviderStateMixin {
  TabController _tabController;
  int count = 0;

  @override
  void initState() {
    this._tabController = TabController(
      vsync: this,
      length: _tabDataList.length
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 42.0,
        // title: Container(
        //   child: Text("海量音源任你搜", style: TextStyle(fontSize: 14.0),),
        //   padding: EdgeInsets.fromLTRB(0, 4.0, 0, 4.0),
        // ),
        bottom: TabBar(
          labelStyle: TextStyle(
            fontSize: 16.0,
          ),
          indicatorColor: Colors.white,
          indicatorWeight: 1.0,
          indicatorSize: TabBarIndicatorSize.label,
          controller: this._tabController,
          tabs: [
            Container(
              child: Text("推荐"),
              padding: EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
            ),
            Container(
              child: Text("流行"),
              padding: EdgeInsets.fromLTRB(0, 8.0, 0, 10.0),
            ),
            Container(
              child: Text("欧美"),
              padding: EdgeInsets.fromLTRB(0, 8.0, 0, 10.0),
            ),
          ],
        )
      ),
      body: TabBarView(
        controller: this._tabController,
        children: [
          RecommendPage(),
          PopularPage(),
          WesternPage(),
        ],
      ),
    );
    // return Container(
    //     child: Column(
    //       children: [
    //         Container(
    //             child: Text("SearchPage: $count")
    //         ),
    //         RaisedButton(
    //           child: Text("count++"),
    //           onPressed: () {
    //             setState(() {
    //               count++;
    //             }
    //           );
    //         })
    //       ],
    //     )
    // );
  }

}