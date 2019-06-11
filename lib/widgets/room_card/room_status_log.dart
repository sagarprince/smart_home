import 'package:flutter/material.dart';
import 'package:charcode/html_entity.dart' as html;

class RoomStatusLog extends StatelessWidget {

  const RoomStatusLog({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10.0),
      padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0, bottom: 10.0),
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
                  color: Color(0xff888E9B),
                  width: 2,
                  style: BorderStyle.solid
              )
          )
      ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset('assets/images/thermometer_icon.png', width: 30.0, height: 30.0),
                  SizedBox(width: 10.0),
                  Text('Temprature Inside',
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white70)),
                ],
              ),
              SizedBox(width: 5.0),
              Text('26${String.fromCharCode(html.$deg)}C',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.white70))
            ],
          ),
          SizedBox(height: 7.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset('assets/images/humidity_icon.png', width: 30.0, height: 30.0),
                  SizedBox(width: 10.0),
                  Text('Humidity Inside',
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white70)),
                ],
              ),
              SizedBox(width: 5.0),
              Text('56%',
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, color: Colors.white70))
            ],
          ),
          SizedBox(height: 7.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Image.asset('assets/images/appointment_icon.png', width: 28.0, height: 28.0),
                  SizedBox(width: 10.0),
                  Text('Appointment Task',
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white70)),
                ],
              ),
              SizedBox(width: 5.0),
              Icon(Icons.check, size: 30.0, color: Colors.white70),
            ],
          ),
        ],
      ),
    );
  }
}