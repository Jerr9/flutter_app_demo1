import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Flutter APP",
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "HomePageTitle"
          ),
        ),
        body: Center(
          child: Container(
            child: MyComp(btnText: "CustomText"),
            color: Colors.greenAccent,
            // width: 1000,
            // height: 100,
            // alignment: Alignment.center
          )
        ),
        floatingActionButton: ButtonBar(
          buttonTextTheme: ButtonTextTheme.primary,
          children: [
            Text(
              "Button"
            )
          ]
        )
      )
    )
  );
}

class MyComp extends StatelessWidget {
  String btnText;
  String text2 = "abc";
  MyComp({this.btnText = "default-text"}) {
    print("MyComp initial");
  }

  @override
  Widget build(BuildContext context) {
    return Text(
        "${btnText + "-" + text2}",
        textDirection: TextDirection.ltr, // ltr: left to right, rtl: right to left
        style: TextStyle(
            color: Colors.yellow,
            fontSize: 22
        )
    );
  }
}

