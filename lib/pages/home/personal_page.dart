import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/pages/test/component_status/component_status_page.dart';
import 'package:flutter_app_demo1/pages/test/navigator/sign_up_main_page.dart';

class PersonalPage extends StatefulWidget {

  @override
  PersonalPageState createState() => PersonalPageState();
}

class PersonalPageState extends State<PersonalPage> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
                child: Text("PersonalPageState")
            ),
            RaisedButton(
              child: Text("个人信息"),
              onPressed: () {
                Navigator.of(context).pushNamed("/userBaseInfoPage");
              }
            ),
            RaisedButton(
                child: Text("社区"),
                onPressed: () {
                  Navigator.of(context).pushNamed("/communityPage");
                }
            ),
            RaisedButton(
                child: Text("导航器嵌套"),
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => SignUpPage()
                    )
                  );
                }
            ),
            RaisedButton(
              child: Text("ComponentStatuTest"),
              onPressed: () => {Navigator.of(context).pushNamed(ComponentStatusPage.name)},
            ),
          ],
        )
    );
  }
}