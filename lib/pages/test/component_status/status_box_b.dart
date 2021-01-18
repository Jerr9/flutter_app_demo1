import 'package:flutter/material.dart';

class StatusBoxB extends StatefulWidget {
  final bool isActive;
  final ValueChanged<bool> onChange;

  StatusBoxB({Key key, this.isActive: false, @required this.onChange}) : super(key: key);

  @override
  State createState() => StatusBoxBState();
}

class StatusBoxBState extends State<StatusBoxB> {
  @override
  void initState() {
    super.initState();
    print('StatusBoxB initState()');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('StatusBoxB didChangeDependencies() ------ ');
  }

  @override
  void didUpdateWidget(Widget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('StatusBoxB didUpdateWidget() ------ ');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: widget.isActive ? Colors.green : Colors.red,
      child: InkWell(
        child: Text(widget.isActive ? "isActive" : "inActive", style: TextStyle(color: Colors.white),),
        onTap: () {
          widget.onChange(!widget.isActive);
        },
      ),
    );
  }
}
