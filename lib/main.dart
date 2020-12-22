import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/view/home.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter APP",
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      home: HomePage(),
    )
  );
}

