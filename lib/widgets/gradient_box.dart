import 'package:flutter/material.dart';

class GradientBox extends StatelessWidget {
  final EdgeInsets padding;
  final Widget child;

  const GradientBox({Key key,
    this.padding = const EdgeInsets.only(left: 15.0, right: 15.0, top: 30.0, bottom: 30.0),
    this.child
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        boxShadow: [
          new BoxShadow(
              color: Colors.black,
              offset: new Offset(0.0, 5.0),
              blurRadius: 15.0,
              spreadRadius: 0.0
          )
        ],
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.0, 0.3],
          colors: [
            Color(0xff4A5266),
            Color(0xff30374E),
          ],
        ),
      ),
      child: child != null ? child : Container(),
    );
  }
}