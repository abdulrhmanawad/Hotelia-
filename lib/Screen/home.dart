import 'file:///C:/Users/HP/Desktop/Flutter/hotelia/lib/Custom/appbar/customAppBar.dart';
import 'package:flutter/material.dart';
import 'package:hotelia/Screen/constant.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Buildapp(),
    );
  }

  Widget Buildapp() {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: false,
          backgroundColor: Color(0xff54d0c1),
          expandedHeight: 400.0,
          flexibleSpace: Flexielization(),
        ),
        SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
          return Container(
            alignment: Alignment.center,
            color: Colors.lightBlueAccent,
            height: 100,
            child: Text('Item: ${items[index]}'),
          );
        },
      childCount: items.length))
      ],
    );
  }
}

// SliverChildListDelegate(
// [
// Container(
// height: 200,
// width: 200,
// color: Colors.red,
// ),
// Container(
// height: 200,
// width: 200,
// color: Colors.orange,
// ),
// Container(
// height: 200,
// width: 200,
// color: Colors.blue,
// ),
// Divider(
// height: 10.0,
// ),
// Container(
// height: 200,
// width: 200,
// color: Colors.teal,
// ),
// ]
// ),
