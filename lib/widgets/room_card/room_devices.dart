import 'package:flutter/material.dart';
import 'package:smart_home/shared/styles.dart';

class RoomDevices extends StatelessWidget {

  const RoomDevices({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(Icons.lightbulb_outline, size: 38.0, color: AppColors.primaryColor),
              SizedBox(height: 5.0),
              Text('Smart Lamp',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: AppColors.primaryColor)),
              SizedBox(height: 4.0),
              Text('ON',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: AppColors.primaryColor))
            ],
          ),
          Column(
            children: <Widget>[
              Image.asset('assets/images/ac_icon.png', width: 40.0, height: 38.0),
              SizedBox(height: 5.0),
              Text('Air Conditioner',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Color(0xff888E9B))),
              SizedBox(height: 4.0),
              Text('OFF',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Color(0xff888E9B)))
            ],
          ),
          Column(
            children: <Widget>[
              Icon(Icons.lock_open, size: 38.0, color: Color(0xff888E9B)),
              SizedBox(height: 5.0),
              Text('Unlock',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Color(0xff888E9B))),
            ],
          ),
        ],
      ),
    );
  }
}