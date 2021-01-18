
import 'package:flutter/material.dart';
import 'file:///E:/demo/flutter/flutter_app_demo1/lib/pages/test/navigator/sign_password_page.dart';
import 'package:flutter_app_demo1/pages/test/navigator/sign_username_page.dart';

class SignUpPage extends StatelessWidget {
  static final String name = "/signUpPage";

  final _navigatorKey = GlobalKey<NavigatorState>();

  Future<bool> _onWillPop() async {
    final maybePop = await _navigatorKey.currentState.maybePop();
    return Future.value(!maybePop);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Navigator(
        key: _navigatorKey,
        initialRoute: SignUsernamePage.name,
        onGenerateRoute: (settings) {
          WidgetBuilder builder;
          switch(settings.name) {
            case "signUp/username":
              builder = (_) => SignUsernamePage();
              break;
            case "signUp/password":
              builder = (_) => SignPasswordPage();
              break;
            default:
              throw Exception("Invalid route: ${settings.name}");
          }

          return MaterialPageRoute(builder: builder, settings: settings);
        },
      ),
    );
  }
}