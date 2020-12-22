import 'package:flutter/material.dart';

class SearchPage extends StatefulWidget {

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [
            Container(
                child: Text("SearchPage: $count")
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