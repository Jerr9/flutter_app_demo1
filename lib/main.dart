import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/view/home.dart';
import 'package:flutter_app_demo1/view/home/drawer/versionHistory.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter APP",
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      home: HomePage(),
      routes: {
        "/home": (context) => HomePage(),
        "/versionHistory": (context) => VersionHistoryPage(),
      },
    )
  );
}

