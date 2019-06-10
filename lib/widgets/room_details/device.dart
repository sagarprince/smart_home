import 'package:flutter/material.dart';
import 'package:smart_home/widgets/gradient_box.dart';

class Device extends StatelessWidget {
  final String name;
  final bool status;
  final IconData icon;
  final String image;
  final String heading;
  final String subHeading;

  const Device({Key key,
    this.name,
    this.status = false,
    this.icon = Icons.power_settings_new,
    @required this.image,
    this.heading = '',
    this.subHeading = ''
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GradientBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Material(
                color: Colors.transparent,
                child: Text('${name} ${status ? 'ON' : 'OFF'}',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white54)),
              ),
              Material(
                color: Colors.transparent,
                child: Icon(icon, color: Colors.white, size: 26.0),
              )
            ],
          ),
          SizedBox(height: 10.0),
          Container(
            child: Image.asset(image, width: 50.0),
          ),
          SizedBox(height: 20.0),
          Material(
            color: Colors.transparent,
            child: Text(heading,
                style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w600, color: Colors.white70)),
          ),
          Material(
            color: Colors.transparent,
            child: Text(subHeading,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white54)),
          )
        ],
      ),
    );
  }
}