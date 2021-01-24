import 'package:flutter/material.dart';

class CategoryList extends StatefulWidget {
  final List list;
  final int activeIndex;
  final ValueChanged<int> onChange;

  CategoryList({Key key, this.activeIndex, this.list, this.onChange}):super(key: key);

  @override
  State createState() => CategoryListState();
}

class CategoryListState extends State<CategoryList> {
  Widget _buildWidget(List list) {

    List<Widget> resultList = list.asMap().keys.map((idx) {
      return (
          SingleChildScrollView(
          child:

            InkWell(
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                width: 100,
                color: widget.activeIndex == idx ? Colors.redAccent : null,
                child: Text('${list[idx]['categoryName']}',
                  style: TextStyle(
                    fontSize: 14,
                    color: widget.activeIndex == idx ? Colors.white : null,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              onTap: () {
                widget.onChange(idx);
              },
            )

        )
      );
    }).toList();

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: resultList,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: 100,
        decoration: BoxDecoration(
          border: Border(right: BorderSide(
            width: 1,
            color: Color(0xeaeaeaea),
            style: BorderStyle.solid,
          )),
        ),
        child: this._buildWidget(widget.list),
        // child: Text("xxx"),
      ),
    );
  }
}