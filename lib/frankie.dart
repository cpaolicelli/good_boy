import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Frankie extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // move frankie to right
      onVerticalDragStart: (dragStartDetails) {
        Fluttertoast.showToast(
            msg: dragStartDetails.toString(),
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIos: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white
        );
      },
      //move frankie to left
      onVerticalDragEnd: (dragEndDetails) {
        Fluttertoast.showToast(
            msg: dragEndDetails.toString(),
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.TOP,
            timeInSecForIos: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white
        );
      },
      //frankie image
      child: new Column(
          children: <Widget>[
            new Image.asset(
                "assets/images/car-top-view.png",
                width: 400.0,
                height: 100.0
            )
          ]
      )
    );
  }

}