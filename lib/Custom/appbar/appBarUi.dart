import 'dart:async';
import 'Stackchaild.dart';
import 'package:flutter/material.dart';
class appbarUI extends StatefulWidget {
  @override
  _appbarUIState createState() => _appbarUIState();
}

class _appbarUIState extends State<appbarUI> {
  PageController _pageController=PageController();
  int index=3;
  int Current_index;
  @override
  void initState() {
    Timer.periodic(Duration(seconds:3), (timer){
      if(_pageController.hasClients){
        if(_pageController.page>=index-1){
          _pageController.animateTo(0, duration:Duration(milliseconds: 1000), curve:Curves.fastLinearToSlowEaseIn);
        }
        else{
          _pageController.nextPage(duration: Duration(milliseconds: 1000), curve: Curves.fastLinearToSlowEaseIn);
        }
      }
      else{
        return;
      }});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() {
              Current_index=index;
            });
          },
          children: <Widget>[
            StackChild(
              img_url:
              "https://images.unsplash.com/photo-1530616858450-99ba4525057d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
              txt1: 'Captwon ',
              txt2: 'Explore your World',
            ),
            StackChild(
              img_url:
              "https://images.unsplash.com/photo-1591448764624-d7973a442bff?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=967&q=80",
              txt1: 'Balloon ',
              txt2: 'Explore your World',
            ),
            StackChild(
              img_url:
              "https://images.unsplash.com/photo-1517825456166-58472a8d3e87?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
              txt1: 'Captwon ',
              txt2: 'Explore your World',
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(50.0),
          child: TextField(
            onChanged: (newValue) {},
            textAlign: TextAlign.start,
            decoration: InputDecoration(
                prefixIcon: Icon(
                  Icons.search,
                  color: Color(0xff54d0c1),
                ),
                hintText: 'Where are you going ?',
                hintStyle: TextStyle(
                  color: Color(0xff97b4c9),
                ),
                contentPadding:
                EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.white, width: 1.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xff54d0c1), width: 2.0),
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                ),
                filled: true,
                fillColor: Colors.white),
            style: TextStyle(color: Colors.black45),
          ),
        ),
        //  DecoratedBox(
        //    decoration: BoxDecoration(
        //        gradient: LinearGradient(
        //          begin: Alignment(0.0, 0.5),
        //          end: Alignment(0.0, 0.0),
        //          colors: <Color>[
        //            Color(0x60000000),
        //            Color(0x00000000),
        //          ],
        //        )),
        // )
      ],
    );
  }
}