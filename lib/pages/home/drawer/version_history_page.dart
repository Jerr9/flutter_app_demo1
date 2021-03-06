
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/model/localData/version_history.dart';

class VersionHistoryPage extends StatefulWidget {
  static final String name = "/versionHistoryPage";
  @override
  VersionHistoryState createState() => VersionHistoryState();
}

class VersionHistoryState extends State<VersionHistoryPage> {

  List<Widget> _getDesc(List list) {
    List<Widget> resList = [];
    list.forEach((a){
      resList.add(
        Container(
          alignment: Alignment.centerLeft,
          child: Text('$a')
        )
      );
    });
    return resList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("版本历史"),
      ),

      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString("assets/datas/versionHistory.json"),
        builder: (context, snapshot) {
          List<dynamic> data = json.decode(snapshot.data.toString());
          if (snapshot.hasData) {
            return ListView.builder(
              padding: EdgeInsets.fromLTRB(15, 5, 15, 20),
              itemCount: data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Color(0xeaeaeaea))
                    )
                  ),
                  child: Flex(
                    // alignment: Alignment.topLeft,
                    direction: Axis.horizontal,
                    children: [
                      Container(
                        padding: EdgeInsets.only(right: 20),
                        alignment: Alignment.topLeft,
                        child: Text(
                          '${data[index]['version']}',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.topRight,
                              child: Text('${data[index]["date"]}', style: TextStyle(color: Color(0x66666666))),
                            ),
                            Column(
                              children: _getDesc(data[index]['desc']),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          }
          else {
            return Container(
                child: Text("VersionHistory")
            );
          }
        },
      ),
    );
  }
}