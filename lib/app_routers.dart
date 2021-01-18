
import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/pages/home.dart';
import 'package:flutter_app_demo1/pages/home/drawer/version_history_page.dart';
import 'package:flutter_app_demo1/pages/test/component_status/component_status_page.dart';
import 'package:flutter_app_demo1/pages/test/navigator/sign_up_main_page.dart';

import 'package:flutter_app_demo1/pages/user/community_page.dart';
import 'package:flutter_app_demo1/pages/user/user_base_info_page.dart';

class AppRouteConfig {
  static final String defaultRouteName = HomePage.name;
  static final Widget defaultRouteWidget = HomePage();

  static final Map<String, WidgetBuilder> routers = {
    HomePage.name: (context) => HomePage(),
    VersionHistoryPage.name: (context) => VersionHistoryPage(),
    UserBaseInfoPage.name: (context) => UserBaseInfoPage(),
    CommunityPage.name: (context) => CommunityPage(),
    SignUpPage.name: (context) => SignUpPage(),
    ComponentStatusPage.name: (context) => ComponentStatusPage(),
  };
}