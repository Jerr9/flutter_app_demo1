import 'package:flutter/material.dart';
import 'package:flutter_app_demo1/pages/test/component_status/status_box_a.dart';
import 'package:flutter_app_demo1/pages/test/component_status/status_box_b.dart';

class ComponentStatusPage extends StatefulWidget {
  static final String name = "/componentStatusPage";

  @override
  State createState() => ComponentStatusState();
}

class ComponentStatusState extends State<ComponentStatusPage> {
  bool isActive = false;

  int count = 0;

  void _onChange(bool newBool) {
    setState(() {
      isActive = newBool;
    });
  }

  void _increment() {
    setState(() {
      count++;
    });
  }

  void _reset() {
    setState(() {
      count = 0;
    });
  }
  @override
  void initState() {
    super.initState();
    print('ComponentStatusPage initState()');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('ComponentStatusPage didChangeDependencies()');
  }

  @override
  void didUpdateWidget(Widget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('ComponentStatusPage didUpdateWidget()');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ComponentStatusPage"),
      ),
      body: ListView(
        children: [
          Text('count: $count'),
          RaisedButton(onPressed: _increment, child: Text('_increment'),),
          RaisedButton(onPressed: _reset, child: Text('_reset'),),
          SizedBox(height: 20,),
          StatusBoxA(),
          SizedBox(height: 20,),
          StatusBoxB(
            isActive: isActive,
            onChange: _onChange,
          ),
        ],
      ),
    );
  }
}
