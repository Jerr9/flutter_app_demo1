
import 'package:flutter/material.dart';

class UserBaseInfoPage extends StatefulWidget {
  static final String name = "/userBaseInfoPage";
  @override
  UserBaseInfoPageState createState() => UserBaseInfoPageState();
}

class UserBaseInfoPageState extends State<UserBaseInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "个人信息"
        ),
      ),
      body: Text("UserBaseInfoPage"),
    );
  }
}