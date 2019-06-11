import 'package:flutter/material.dart';
import 'package:smart_home/shared/models.dart';
import 'package:smart_home/widgets/room_heading.dart';
import 'package:smart_home/widgets/room_background_image.dart';
import 'package:smart_home/widgets/room_card/room_devices_count.dart';

class RoomInfo extends StatelessWidget {
  final Room room;
  final bool isActive;
  final bool isExpanded;
  final EdgeInsets margin;
  final VoidCallback onTap;

  const RoomInfo({Key key,
      @required this.room,
      this.isActive = false,
      this.isExpanded = false,
      this.margin = const EdgeInsets.only(top: 90.0),
      this.onTap
  }): assert(room != null),
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      margin: margin,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              color: Colors.black, blurRadius: 18.0, spreadRadius: -5.0, offset: Offset(0.0, 11.0))
        ]
      ),
      child: ClipRRect(
        clipBehavior: Clip.hardEdge,
        borderRadius: BorderRadius.all(Radius.circular(20.0)),
        child: RoomBackgroundImage(
            id: room.id,
            name: room.name,
            image: room.image,
            onTap: () {
              Navigator.pushNamed(context, '/room', arguments: room.id);
              onTap();
            },
            child: Stack(
              children: <Widget>[
                Container(
                  color: Colors.black.withOpacity(0.3),
                ),
                AnimatedContainer(
                  transform: isActive ?
                  (new Matrix4.identity()..translate(0.0, 45.0)) :
                  (new Matrix4.identity()..translate(0.0, -100.0)),
                  duration: Duration(milliseconds: 800),
                  curve: Curves.bounceInOut,
                  child: RoomHeading(
                      name: room.name,
                      fontSize: 26.0,
                  ),
                ),
                AnimatedContainer(
                  transform: (isActive && !isExpanded) ?
                  (new Matrix4.identity()..translate(0.0, 0.0)) :
                  (new Matrix4.identity()..translate(-1000.0, 0.0)),
                  duration: Duration(milliseconds: 600),
                  curve: Curves.easeInToLinear,
                  child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      padding: EdgeInsets.only(left: 15.0, bottom: 20.0),
                      child: RoomDevicesCount(
                        count: room.devicesCount
                      ),
                    ),
                  ),
                ),
              ],
            )
        ),
      ),
    );
  }
}