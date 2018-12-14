import 'package:flutter/material.dart';

class Frankie extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // move frankie to right
      onVerticalDragStart: (dragStartDetails) {

      },
      //move frankie to left
      onVerticalDragEnd: (dragEndDetails) {

      },
      //frankie image
      child: new Image.asset(
          "assets/images/car-top-view.png",
          width: 400.0,
          height: 100.0,
          alignment: new Alignment(-1.0, -1.0)
      ),
    );
  }

}