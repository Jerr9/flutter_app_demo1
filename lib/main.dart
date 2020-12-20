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
        body: MyStatefulContent(),
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

class MyStatefulContent extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return MyStatefulContentState();
  }
}

class MyStatefulContentState extends State<MyStatefulContent> {
  int count = 0;

  @override
  Widget build(BuildContext context) {

    return Center(
        child: Column(
            children: [
              Text("当前计数：${this.count}", style: TextStyle(fontSize: 30)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      setState((){
                        count--;
                      });
                    },
                    textTheme: ButtonTextTheme.accent,
                    child: Text("点击-", style: TextStyle(color: Colors.white)),
                  ),
                  RaisedButton(
                    onPressed: () {
                      setState((){
                        count++;
                      });
                    },
                    textTheme: ButtonTextTheme.accent,
                    child: Text("点击+", style: TextStyle(color: Colors.white)),
                  )
                ],
              )
            ]
        )
    );
  }
}


// 不能实现
class MyStatelessContent extends StatelessWidget {
  final int count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
          children: [
            Text("当前计数：${count}", style: TextStyle(fontSize: 30)),
            RaisedButton(
              onPressed: () => {
                // count++;
              },
              textTheme: ButtonTextTheme.accent,
              child: Text("点击", style: TextStyle(color: Colors.white)),
            )
          ]
      )
    );
  }
}