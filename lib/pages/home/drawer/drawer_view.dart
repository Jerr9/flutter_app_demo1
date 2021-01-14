

import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/pages/home/drawer/version_history_page.dart';

class DrawerView extends StatefulWidget {
  @override
  DrawerViewState createState() => DrawerViewState();
}

class DrawerViewState extends State<DrawerView> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          children: [
            SizedBox(height: 100),
            Center(
              child: Container(
                padding: EdgeInsets.all(100),
                width: 120,
                height: 120,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(60.0),
                    // shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage("assets/images/memo.jpg"),
                    )
                ),
              ),
            ),

            Container(
              alignment: Alignment.bottomRight,
              width: 120,
              height: 120,
              child: CircleAvatar(
                radius: 60.0,
                backgroundImage: AssetImage( //背景图 child可以添加内容
                  "assets/images/memo.jpg",
                ),
              ),
            ),
            SizedBox(
              width: 120,
              height: 120,
              child: Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, //可以设置角度，BoxShape.circle直接圆形
                    image: DecorationImage(
                      fit: BoxFit.contain,
                      image: AssetImage(
                        "assets/images/memo.jpg",
                      ),
                    )
                ),
              ),
            ),
            // Align(
            //   // heightFactor: 150,
            //   child: Row(
            //     children: [
            //       Container(height: 40, width: 30, color: Colors.red),
            //       Container(height: 90, width: 30, color: Colors.green),
            //       Container(height: 60, width: 30, color: Colors.blue),
            //     ],
            //   ),
            // ),

            Container(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 40, 0, 40),
                  child: Column(
                    children: [
                      // Container(
                      //   alignment: Alignment.topRight,
                      //   child: Text("Memo", style: TextStyle(fontSize: 30, height: 1.5)),
                      // ),
                      // SizedBox(height: 20),
                      // Container(
                      //   alignment: Alignment.topLeft,
                      //   child: Text("Memo", style: TextStyle(fontSize: 30, height: 1.5)),
                      // ),
                      SizedBox(height: 20),
                      Container(
                        // alignment: Alignment.center,
                        child: GestureDetector(
                          child: Text("Memo", style: TextStyle(fontSize: 30, height: 1.5)),
                          onTap: () => (
                              print("abc")
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("Version：1.0.0", style: TextStyle(fontSize: 14, height: 1.5)),
                      SizedBox(height: 20),
                      Center(
                        child: GestureDetector(
                          onTap: () {
                            print("abc");
                            Navigator.of(context).pushNamed(VersionHistoryPage.name);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("版本历史", style: TextStyle(fontSize: 14, height: 1.5)),
                              Icon(Icons.navigate_next, size: 14),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text("开发者：猫的名字丑哭了", style: TextStyle(fontSize: 14, height: 1.5)),
                    ],
                  ),
                )
            )
          ],
        )
    );
  }
}