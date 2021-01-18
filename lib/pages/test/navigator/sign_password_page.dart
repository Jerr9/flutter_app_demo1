
import 'package:flutter/material.dart';

class SignPasswordPage extends StatelessWidget {
  static final String name = "signUp/password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Password"),
      ),
      body: Row(
        children: [
          RaisedButton(child: Text("Back"), onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          }),
          RaisedButton(child: Text("Go"), onPressed: () {
            print("木有更多了");
          }),
        ],
      ),
    );
  }
}