import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/app_routers.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Memo",
      theme: ThemeData(
        primaryColor: Colors.redAccent,
      ),
      // home: AppRouteConfig.defaultRouteWidget,
      initialRoute: AppRouteConfig.defaultRouteName,
      routes: AppRouteConfig.routers,
    )
  );
}

