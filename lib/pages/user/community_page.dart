

import 'package:flutter/material.dart';
import 'package:shake_animation_widget/shake_animation_widget.dart';

class CommunityPage extends StatefulWidget {
  static final String name = '/communityPage';
  @override
  State createState() => CommunityPageState();
}

class CommunityPageState extends State<CommunityPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "社区"
        ),
      ),
      body: Stack(
        children: [
          Container(
            child: Text("CommunityPage"),
          ),
          Container(
            child: RoteFlowButtonMenu(
              iconList: [
                Icon(Icons.message, color: Colors.white),
                Icon(Icons.image, color: Colors.yellow),
                Icon(Icons.camera, color: Colors.blue)
              ],
              iconBackgroundColorList: [
                Colors.black38,
                Colors.black38,
                Colors.black38
              ],
              defaultBackgroundColor: Colors.redAccent,
            )
          ),
        ],
      ),
    );
  }
}