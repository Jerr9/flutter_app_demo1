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
          child: Text(
            "Hello world",
            textDirection: TextDirection.ltr, // ltr: left to right, rtl: right to left
            style: TextStyle(
              color: Colors.yellow,
              fontSize: 22
            )
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

