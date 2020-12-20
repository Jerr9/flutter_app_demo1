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
        body: PageContainer(),
      )
    )
  );
}

class PageContainer extends StatefulWidget {
  PageContainer() {
    print("PageContainer 构造方法");
  }
  @override
  State<PageContainer> createState() {
    print("PageContainer createState方法");
    return PageContainerState();
  }
}

class PageContainerState extends State<PageContainer> {
  PageContainerState() {
    print("PageContainerState 构造方法");
  }
  @override

  int value = 1;

  @override
  void initState() {
    print("PageContainerState initState方法");
  }

  @override
  void didChangeDependencies() {
    print("PageContainerState didChangeDependencies方法");
  }

  @override
  void didUpdateWidget(PageContainer oldWidget) {
    print("PageContainerState didUpdateWidget方法");
  }

  @override
  Widget build(BuildContext context) {
    print("PageContainerState build方法");
    return  Center(
        child: Column(
          children: [
            Text(
                "Hello world $value",
                textDirection: TextDirection.ltr, // ltr: left to right, rtl: right to left
                style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 22
                )
            ),
            RaisedButton(
              child: Text("点我"),
              onPressed: () {
                setState(() {
                  value++;
                });
              }
            )
          ],
        )
    );
  }
}

