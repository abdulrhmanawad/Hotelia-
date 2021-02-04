import 'dart:async';
import 'package:flutter/material.dart';
import 'file:///C:/Users/HP/Desktop/Flutter/hotelia/lib/Custom/appbar/appBarUi.dart';

class Flexielization extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      // title: Text("Hotel booking app"),
      // centerTitle: true,
      stretchModes: <StretchMode>[
        StretchMode.blurBackground,
        StretchMode.fadeTitle,
        StretchMode.zoomBackground
      ],
      background: appbarUI(),
    );
  }
}




