import 'package:flutter/material.dart';
import 'package:flutter_clock/size_config_two.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CountryCard extends StatelessWidget {
  final country;
  final timeZone;
  final iconSrc;
  final time;
  final period;

  CountryCard(
      {this.country, this.timeZone, this.iconSrc, this.time, this.period});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfigTwo.isPortrait ? SizeConfigTwo.blockWidth * 60:SizeConfigTwo.blockWidth * 100,
      height: SizeConfigTwo.isPortrait ?SizeConfigTwo.blocHeight * 20:SizeConfigTwo.blocHeight * 15,
      padding: EdgeInsets.only(left: SizeConfigTwo.blockWidth * 3),
      margin: EdgeInsets.only(bottom: SizeConfigTwo.blocHeight),
      child: Container(
          padding: EdgeInsets.all(SizeConfigTwo.isPortrait ? SizeConfigTwo.blocHeight*3:SizeConfigTwo.blocHeight),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: Theme.of(context).primaryIconTheme.color!,
              )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                country,
                style: Theme.of(context)
                    .textTheme
                    .headlineMedium
                    ?.copyWith(fontSize: SizeConfigTwo.isPortrait ? SizeConfigTwo.blocHeight * 2.5:SizeConfigTwo.blocHeight * 1.5),
              ),
              SizedBox(
                height: 5.0,
              ),
              Text(timeZone),
              Spacer(),
              Row(
                children: <Widget>[
                  SvgPicture.asset(
                    iconSrc,
                    width: SizeConfigTwo.isPortrait ? SizeConfigTwo.blocHeight * 4:SizeConfigTwo.blocHeight * 2,
                    // color: Theme.of(context).actionIconTheme,
                  ),
                  Spacer(),
                  Text(
                    time,
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(fontSize: SizeConfigTwo.isPortrait ? SizeConfigTwo.blocHeight * 5:SizeConfigTwo.blocHeight * 3),
                  ),
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(period),
                  ),
                ],
              ),
            ],
          ),
        ),
    );
  }
}
