import 'package:flutter/material.dart';
import 'package:smart_home/shared/styles.dart';

class RoomHeading extends StatelessWidget {
  final String name;
  final double fontSize;

  RoomHeading({Key key, @required this.name, this.fontSize = 30.0}):
      assert(name != null),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    final Shader linearGradient = LinearGradient(
      colors: <Color>[Color(0xffF1EEEE), AppColors.primaryColor],
    ).createShader(Rect.fromLTWH(0.0, 0.0, 180.0, 32.0));

    return Material(
      color: Colors.transparent,
      child: Container(
        child: Flex(
          direction: Axis.horizontal,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              name.toUpperCase(),
              style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                  fontFamily: AppFonts.secondaryFontFamily,
                  foreground: Paint()..shader = linearGradient
              ),
              softWrap: true,
            )
          ],
        ),
      ),
    );
  }
}