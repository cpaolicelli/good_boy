import 'package:flutter/material.dart';

class Frankie extends StatefulWidget {

  Offset position;

  @override
  _FrankieState createState() => new _FrankieState();
}

class _FrankieState extends State<Frankie> {

  static Image _frankie = new Image.asset(
      "assets/images/frankie-top-view.png",
      width: 400.0,
      height: 100.0
  );

  @override
  void initState() {
    super.initState();
    widget.position = new Offset(0.0, 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return new Positioned(
            bottom: widget.position.dy,
            left: widget.position.dx,
            child: new Draggable(
                feedback: _frankie,
                child: _frankie,
                childWhenDragging: new Container(),
                onDraggableCanceled: (velocity, offset) {
                  print('_DragBoxState.build -> offset $offset');

                  setState(() {
                    widget.position = new Offset(offset.dx, 0.0);
                  });
                },
                axis: Axis.horizontal
            )
        );
  }

}