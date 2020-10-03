import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_clock/size_config.dart';

import '../../size_config_two.dart';

class TimeInHourAndMinute extends StatefulWidget {
  @override
  _TimeInHourAndMinuteState createState() => _TimeInHourAndMinuteState();
}

class _TimeInHourAndMinuteState extends State<TimeInHourAndMinute> {

  TimeOfDay _timeOfDay = TimeOfDay.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      if(_timeOfDay.minute != TimeOfDay.now().minute) {
        setState(() {
          _timeOfDay = TimeOfDay.now();
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {

    String _period = _timeOfDay.period == DayPeriod.am ? 'AM' : 'PM';

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          '${_timeOfDay.hourOfPeriod}:${_timeOfDay.minute}',
          style: Theme.of(context).textTheme.headline1.copyWith(fontSize: SizeConfigTwo.isPortrait ? SizeConfigTwo.blocHeight * 5:SizeConfigTwo.blocHeight * 3),
        ),
        SizedBox(width: 5.0,),
        RotatedBox(quarterTurns: 3,
        child: Text(
          _period,
          style: Theme.of(context).textTheme.bodyText1.copyWith(fontSize: SizeConfigTwo.isPortrait ? SizeConfigTwo.blocHeight * 2.5:SizeConfigTwo.blocHeight * 1.5),
        ),
        )
      ],
    );
  }
}
