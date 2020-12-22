import 'package:flutter/material.dart';

class MessagePage extends StatefulWidget {

  @override
  MessagePageState createState() => MessagePageState();
}

class MessagePageState extends State<MessagePage> {

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
                child: Text("MessagePage")
            ),
          ],
        )
    );
  }
}