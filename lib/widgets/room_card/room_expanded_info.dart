import 'package:flutter/material.dart';
import 'package:smart_home/shared/models.dart';
import 'package:smart_home/widgets/room_card/room_devices.dart';
import 'package:smart_home/widgets/room_card/room_status_log.dart';

class RoomExpandedInfo extends StatelessWidget {
  final Room room;
  final Animation<double> animation;

  RoomExpandedInfo({Key key, @required this.room, @required this.animation}):
      assert(room != null),
      assert(animation != null),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(20.0)),
      child: Center(
        child: ScaleTransition(
          scale: animation,
          child: Container(
            margin: EdgeInsets.only(top: 100.0),
            decoration: BoxDecoration(
              color: Color(0xff30374E),
              borderRadius: BorderRadius.all(Radius.circular(20.0))
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                const RoomDevices(),
                const RoomStatusLog()
              ],
            ),
          )
        ),
      ),
    );
  }
}