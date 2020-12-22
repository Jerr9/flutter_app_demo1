import 'package:flutter/material.dart';

class PlayPage extends StatefulWidget {

  @override
  PlayPageState createState() => PlayPageState();
}

class PlayPageState extends State<PlayPage> {
  int count = 0;


  @override
  void initState() {
    // initState 必须调用 super.initState(); 否则报错
    super.initState();
    print("init...");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
                child: Text("PlayPage: $count")
            ),
            RaisedButton(
                child: Text("count++"),
                onPressed: () {
                  setState(() {
                    count++;
                  }
                  );
                })
          ],
        )
    );
  }
}