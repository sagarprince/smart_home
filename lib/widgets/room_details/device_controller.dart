import 'package:flutter/material.dart';
import 'package:smart_home/widgets/gradient_box.dart';
import 'package:smart_home/shared/styles.dart';

class DeviceController extends StatelessWidget {
  final bool status;
  final String heading;
  final String subHeading;

  const DeviceController({Key key,
    this.status = false,
    this.heading = '',
    this.subHeading = ''
  }): super(key: key);

  @override
  Widget build(BuildContext context) {
    double _value = 50;

    return GradientBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Material(
                    color: Colors.transparent,
                    child: Text(heading,
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.white)),
                  ),
                  SizedBox(height: 5.0),
                  Material(
                    color: Colors.transparent,
                    child: Text(subHeading,
                        style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, color: Colors.white54)),
                  )
                ],
              ),
              Material(
                color: Colors.transparent,
                child: Text('${status ? 'ON' : 'OFF'}',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: AppColors.primaryColor)),
              )
            ],
          ),
          SizedBox(height: 20.0),
          Flex(
            direction: Axis.horizontal,
            children: <Widget>[
              Icon(Icons.brightness_5, color: Colors.grey),
              Expanded(
                child: Material(
                  color: Colors.transparent,
                  child: SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                        activeTrackColor: AppColors.primaryColor,
                        inactiveTrackColor: Colors.grey,
                        trackHeight: 4.0,
                        thumbColor: AppColors.primaryColor,
                        thumbShape: RoundSliderThumbShape(enabledThumbRadius: 8.0),
                        overlayColor: Colors.purple.withAlpha(32),
                        overlayShape: RoundSliderOverlayShape(overlayRadius: 14.0),
                        showValueIndicator: ShowValueIndicator.onlyForContinuous,
                        valueIndicatorColor: Colors.grey,
                        valueIndicatorTextStyle: TextStyle(color: Colors.white)
                    ),
                    child: StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return Slider(
                            value: _value,
                            max: 100.0,
                            label: '${(_value / 100 * 100).toInt()}%',
                            onChanged: (value) {
                              setState(() {
                                _value = value;
                              });
                            }
                        );
                      },
                    ),
                  ),
                ),
              ),
              Icon(Icons.brightness_7, color: Colors.grey, size: 30.0),
            ],
          )
        ],
      ),
    );
  }
}