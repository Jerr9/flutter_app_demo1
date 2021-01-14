
import 'package:flutter/material.dart';

class BasePageWidget extends StatefulWidget {
  @override
  BasePageWidgetState createState() => BasePageWidgetState();

  BasePageWidget({
    Key key,
    @required Widget body,
    AppBar appBar,
    BottomNavigationBar bottomNavigationBar,
  });
}

class BasePageWidgetState extends State<BasePageWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("xx"),
    );
  }
}