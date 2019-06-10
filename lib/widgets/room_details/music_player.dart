import 'package:flutter/material.dart';
import 'package:smart_home/shared/styles.dart';
import 'package:smart_home/widgets/gradient_box.dart';

class MusicPlayer extends StatelessWidget {
  const MusicPlayer({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBox(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text('NOW PLAYING',
                    style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.white54)),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Container(
              child: Material(
                color: Colors.transparent,
                child: Text('NEVER TOOK THE TIME',
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white70)),
              )
          ),
          Container(
              child: Material(
                color: Colors.transparent,
                child: Text('- AKON',
                    style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w500, color: Colors.white70)),
              )
          ),
          SizedBox(height: 5.0),
          Material(
            color: Colors.transparent,
            child: Text('BANTU',
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w600, color: AppColors.primaryColor)),
          ),
          SizedBox(height: 15.0),
          Material(
            color: Colors.transparent,
            child: Row(
              children: <Widget>[
                Icon(Icons.skip_previous, color: Colors.white, size: 26.0),
                Icon(Icons.play_arrow, color: Colors.white, size: 35.0),
                Icon(Icons.skip_next, color: Colors.white, size: 26.0)
              ],
            ),
          )
        ],
      ),
    );
  }
}