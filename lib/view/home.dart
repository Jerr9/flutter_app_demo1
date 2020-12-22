
import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/view/message.dart';
import 'package:flutter_app_demo1/view/play.dart';
import 'package:flutter_app_demo1/view/search.dart';

// 测试缓存的实现

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int tabIndex = 0;
  final List<BottomNavigationBarItem> tabList = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "搜索",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.music_video),
      label: "听歌",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.message),
      label: "消息",
    ),
  ];

  final List<Widget> bodyList = [
    SearchPage(),
    PlayPage(),
    MessagePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "网抑云"
        ),
      ),
      // 缓存实现方式1：利用 IndexedStack 做页面缓存，除 index 外所指页面并未销毁，仅不可见
      // body: IndexedStack(
      //   index: tabIndex,
      //   children: bodyList,
      // ),
      // 缓存实现方式2：利用 Stack + Offstage
      body: Stack(
          children: [
            Offstage(
              offstage: tabIndex != 0,
              child: bodyList[0],
            ),
            Offstage(
              offstage: tabIndex != 1,
              child: bodyList[1],
            ),
            Offstage(
              offstage: tabIndex != 2,
              child: bodyList[2],
            ),
          ]
      ),


      // body: bodyList[this.tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(
          color: Colors.redAccent,
        ),
        unselectedIconTheme: IconThemeData(
          color: Colors.black38,
        ),
        currentIndex: this.tabIndex,
        // backgroundColor: Colors.blue,
        unselectedLabelStyle: TextStyle(
          // color: Colors.white,
        ),
        items: this.tabList,
        onTap: (index) {
          print(index);
          setState(() {
            this.tabIndex = index;
          });
        },
      ),
    );
  }
}