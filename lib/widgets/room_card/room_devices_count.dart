import 'package:flutter/material.dart';

class RoomDevicesCount extends StatelessWidget {
  final int count;

  const RoomDevicesCount({Key key, this.count = 0}):
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 14,
          height: 14,
          margin: EdgeInsets.only(right: 5.0),
          decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.all(Radius.circular(16.0))
          ),
        ),
        Material(
          color: Colors.transparent,
          child: Text('$count devices to manage.',
              style: TextStyle(color: Colors.white, fontSize: 15.0, fontWeight: FontWeight.bold)
          ),
        )
      ],
    );
  }
}