import 'package:flutter/material.dart';
import 'package:charcode/html_entity.dart' as html;
import 'package:smart_home/shared/store.dart';
import 'package:smart_home/widgets/gradient_box.dart';
import 'package:smart_home/shared/styles.dart';

Store _store = Store();

class AirConditionerController extends StatelessWidget {

  const AirConditionerController({Key key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    double _value = 30.0;

    return GradientBox(
      padding: EdgeInsets.only(top: 15.0, left: 0.0, right: 0.0, bottom: 15.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: Icon(Icons.power_settings_new, color: Colors.grey, size: 32.0),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(0.0, -10.0),
                    child: Image.asset('assets/images/ac_white_icon.png', width: 75.0, height: 75.0),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: Text('AIR CONDITIONER OFF',
                        style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white)),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.0, left: 20.0, right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: Text('Humidity 75%',
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500, color: Colors.white54)),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      StreamBuilder(
                        stream: _store.airConditionerController.stream,
                        builder: (BuildContext context, AsyncSnapshot snapshot) {
                          var temp = (snapshot.data != null) ? snapshot.data.temprature : _store.temp;
                          return Material(
                            color: Colors.transparent,
                            child: Text('${temp}${String.fromCharCode(html.$deg)}',
                                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white)),
                          );
                        },
                      ),
                      Material(
                        color: Colors.transparent,
                        child: Text('C',
                            style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, color: Colors.white)),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
              child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.only(bottom: 10.0, left: 6.0, right: 6.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('10', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                            Text('|', style: TextStyle(fontSize: 14.0, color: Colors.white))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('15', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                            Text('|', style: TextStyle(fontSize: 14.0, color: Colors.white))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('20', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                            Text('|', style: TextStyle(fontSize: 14.0, color: Colors.white))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('25', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                            Text('|', style: TextStyle(fontSize: 14.0, color: Colors.white))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('30', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                            Text('|', style: TextStyle(fontSize: 14.0, color: Colors.white))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('35', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                            Text('|', style: TextStyle(fontSize: 14.0, color: Colors.white))
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text('40', style: TextStyle(fontSize: 16.0, color: Colors.white)),
                            Text('|', style: TextStyle(fontSize: 14.0, color: Colors.white))
                          ],
                        )
                      ],
                    )
                  ),
                  Material(
                    color: Colors.transparent,
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          activeTrackColor: AppColors.primaryColor,
                          inactiveTrackColor: Colors.grey,
                          trackHeight: 3.0,
                          thumbColor: AppColors.primaryColor,
                          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 10.0),
                          overlayColor: Colors.purple.withAlpha(32),
                          overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                      ),
                      child: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Slider(
                              value: _value,
                              min: 10.0,
                              max: 40.0,
                              label: '${(_value / 100 * 100).toInt()}${String.fromCharCode(html.$deg)}c',
                              onChanged: (value) {
                                setState(() {
                                  _value = value;
                                });
                                _store.onTempratureChange(_value.toInt());
                              }
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
