import 'package:flutter/material.dart';
import 'file:///C:/Users/HP/Desktop/Flutter/hotelia/lib/Custom/appbar/shap.dart';
class StackChild extends StatelessWidget {
  final String img_url;
  final String txt1;
  final String txt2;
  const StackChild({this.img_url, this.txt1, this.txt2});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(
          img_url,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                txt1,
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                txt2,
                style: TextStyle(color: Colors.green),
              ),
              RaisedButton(
                child: Text(
                  'button',
                  style: TextStyle(color: Colors.white),
                ),
                color: Color(0xff54d0c1),
                onPressed: () {},
              ),

            ],
          ),
        )
      ],
    );
  }
}