import 'package:flutter/material.dart';
import 'package:hotelia/Screen/home.dart';

void main() {
  runApp(Hotelia());
}

class Hotelia extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.indigo,accentColor:Colors.purple),
      home: Home(),
    );
  }
}


