import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/view/home.dart';
import 'package:flutter_app_demo1/view/home/drawer/versionHistory.dart';
import 'package:flutter_app_demo1/view/user/userBaseInfoPage.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Memo",
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      home: HomePage(),
      routes: {
        "/homePage": (context) => HomePage(),
        "/versionHistoryPage": (context) => VersionHistoryPage(),
        "/userBaseInfoPage": (context) => UserBaseInfoPage(),
      },
    )
  );
}

