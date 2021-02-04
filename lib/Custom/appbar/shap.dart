import 'package:flutter/material.dart';

class CircleSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: Colors.red,
        shape: BoxShape.circle,
      ),
    );
  }
}

class ContainerSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleSlider())
          , Padding(
              padding: EdgeInsets.all(10.0),
              child: CircleSlider()),
          Padding(
            padding: EdgeInsets.all(10.0),
              child: CircleSlider())],
      ),
    );
  }
}
