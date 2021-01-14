
import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/pages/test/sign_password_page.dart';

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