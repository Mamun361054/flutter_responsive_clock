import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_clock/constant.dart';
import 'package:flutter_clock/models/theme_provider.dart';
import 'package:flutter_clock/size_config_two.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import 'clock_painter.dart';

class Clock extends StatefulWidget {
  @override
  _ClockState createState() => _ClockState();
}

class _ClockState extends State<Clock> {

  DateTime _dateTime = DateTime.now();

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        _dateTime = DateTime.now();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfigTwo.blockWidth * 5),
          child:Container(
            width: SizeConfigTwo.isPortrait ? SizeConfigTwo.blockWidth * 80:SizeConfigTwo.blockWidth * 40,
              height: SizeConfigTwo.isPortrait ?SizeConfigTwo.blocHeight * 50:SizeConfigTwo.blocHeight * 20,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 0.0),
                    color: kShadowColor.withOpacity(0.14),
                    blurRadius: 64,
                  )
                ]
              ),
              child: Transform.rotate(
                angle: -pi/2,
                child: CustomPaint(
                  painter: ClockPainter(context: context,dateTime: _dateTime),
                ),
              ),
            ),
        ),
        Positioned(
          top: 80.0,
          left: 0.0,
          right: 0.0,
          child: Consumer<ThemeModel>(
            builder: (context,theme,child){
              return GestureDetector(
                onTap: () => theme.changeTheme(),
                child: SvgPicture.asset(
                  theme.isLightTheme ? 'assets/icons/Sun.svg'
                      :"assets/icons/Moon.svg",
                  height: 24.0,
                  width: 24.0,
                  color: Theme.of(context).primaryColor,
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
