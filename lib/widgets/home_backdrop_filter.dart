import 'dart:ui' as ui;
import 'package:flutter/material.dart';

class HomeBackdropFilter extends StatelessWidget {
  final Widget child;

  const HomeBackdropFilter({Key key, @required this.child}):
        assert(child != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white.withOpacity(0.5),
      child: BackdropFilter(
        filter: new ui.ImageFilter.blur(
          sigmaX: 6,
          sigmaY: 6,
        ),
        child: new Container(
          child: Stack(
            overflow: Overflow.visible,
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 50.0),
                child: Flex(
                  direction: Axis.horizontal,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('CHOOSE YOUR ROOM',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.black54))
                  ],
                ),
              ),
              child
            ],
          ),
        ),
      ),
    );
  }
}