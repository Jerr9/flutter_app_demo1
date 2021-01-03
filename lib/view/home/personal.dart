import 'package:flutter/material.dart';

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
          ],
        )
    );
  }
}