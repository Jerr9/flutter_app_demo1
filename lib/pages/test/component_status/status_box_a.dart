import 'package:flutter/material.dart';

class StatusBoxA extends StatefulWidget {
  @override
  State createState() => StatusBoxAState();
}

class StatusBoxAState extends State<StatusBoxA> {
  bool isActive = true;

  void _onChange() {
    setState(() {
      isActive = !isActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: isActive ? Colors.green : Colors.red,
      child: InkWell(
        child: Text(isActive ? "isActive" : "inActive", style: TextStyle(color: Colors.white),),
        onTap: _onChange,
      ),
    );
  }
}
