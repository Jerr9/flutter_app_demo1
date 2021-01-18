
import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/pages/home/drawer/drawer_view.dart';
import 'package:flutter_app_demo1/pages/home/mall_home_page.dart';
import 'file:///E:/demo/flutter/flutter_app_demo1/lib/pages/home/category_list_page/category_list_page.dart';
import 'package:flutter_app_demo1/pages/home/shopping_cart_page.dart';
import 'package:flutter_app_demo1/pages/home/personal_page.dart';

// 测试缓存的实现

class HomePage extends StatefulWidget {
  static final String name = '/homePage';
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int tabIndex = 0;
  final List<BottomNavigationBarItem> tabList = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: "首页",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.format_list_bulleted),
      label: "分类",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_cart),
      label: "购物车",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: "我的",
    ),
  ];

  final List<Widget> bodyList = [
    ShoppingHomePage(),
    CategoryListPage(),
    ShoppingCartPage(),
    PersonalPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: tabIndex != 0 ? AppBar(
        title: Text(
          "Memo"
        ),
      ) : null,
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
          Offstage(
            offstage: tabIndex != 3,
            child: bodyList[3],
          ),
        ]
      ),

      // 左侧边栏
      // drawer: Drawer(
      //   child: ListView(
      //     children: [
      //       Text("a"),
      //       Text("a"),
      //       Text("a"),
      //       Text("a"),
      //       Text("a"),
      //       Text("a"),
      //       Text("a"),
      //     ],
      //   )
      // ),

      drawerEnableOpenDragGesture: true,

      endDrawer: tabIndex == 3 ? DrawerView() : null,

      endDrawerEnableOpenDragGesture: true,

      // body: bodyList[this.tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedIconTheme: IconThemeData(
          color: Colors.redAccent,
        ),
        selectedFontSize: 12.0,
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