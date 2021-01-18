
import 'package:flutter/material.dart';
import 'file:///E:/demo/flutter/flutter_app_demo1/lib/pages/test/navigator/sign_password_page.dart';

class SignUsernamePage extends StatelessWidget {
  static final String name = "signUp/username";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Username"),
      ),
      body: Row(
        children: [
          RaisedButton(child: Text("Back"), onPressed: () {
            Navigator.of(context, rootNavigator: true).pop();
          }),
          RaisedButton(child: Text("Next"), onPressed: () {
            Navigator.of(context).pushNamed(SignPasswordPage.name);
          }),
        ],
      ),
    );
  }
}