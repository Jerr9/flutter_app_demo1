

import 'package:flutter/material.dart';

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
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(60.0),
                    image: DecorationImage(
                      image: AssetImage("lib/assets/images/memo.jpg"),
                    )
                ),
              ),
            ),
            // Container(
            //   alignment: Alignment.center,
            //   width: 120,
            //   height: 120,
            //   margin: EdgeInsets.all(0),
            //   child: CircleAvatar(
            //     radius: 60.0,
            //     backgroundImage: AssetImage( //背景图 child可以添加内容
            //       "lib/assets/images/memo.jpg",
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   width: 120,
            //   height: 120,
            //   child: Container(
            //     margin: EdgeInsets.zero,
            //     decoration: BoxDecoration(
            //         shape: BoxShape.circle, //可以设置角度，BoxShape.circle直接圆形
            //         image: DecorationImage(
            //           fit: BoxFit.contain,
            //           image: AssetImage(
            //             "lib/assets/images/memo.jpg",
            //           ),
            //         )
            //     ),
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
                            // print("abc");
                            Navigator.of(context).pushNamed("/versionHistoryPage");
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