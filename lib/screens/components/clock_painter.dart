import 'dart:math';
import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  final BuildContext context;
  final DateTime dateTime;

  ClockPainter({this.context, this.dateTime});

  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    Offset center = Offset(centerX, centerY);

    //minute calculation
    double minX =
        centerX + size.width * 0.35 * cos((dateTime.minute * 6) * pi / 180);
    double minY =
        centerY + size.height * 0.35 * sin((dateTime.minute * 6) * pi / 180);

    //Minute Line
    canvas.drawLine(
        center,
        Offset(minX, minY),
        Paint()
          ..color = Theme.of(context).accentColor
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    //Hour calculation
    double hourX = centerX +
        size.width *
            0.3 *
            cos((dateTime.hour * 30.0 + dateTime.minute * 0.5) * pi / 180);
    double hourY = centerY +
        size.width *
            0.3 *
            sin((dateTime.hour * 30.0 + dateTime.minute * 0.5) * pi / 180);

    canvas.drawLine(
        center,
        Offset(hourX, hourY),
        Paint()
          ..color = Theme.of(context).colorScheme.secondary
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10);

    //second calculation
    double secondX =
        centerX + size.width * 0.4 * cos((dateTime.second * 6) * pi / 180);
    double secondY =
        centerY + size.width * 0.4 * sin((dateTime.second * 6) * pi / 180);

    //second Line
    canvas.drawLine(center, Offset(secondX, secondY), Paint()
    ..color = Theme.of(context).primaryColor);

    //center dots
    Paint dotPaint = Paint()
    ..color = Theme.of(context).primaryIconTheme.color;
    canvas.drawCircle(center, 24.0, dotPaint);
    canvas.drawCircle(center, 23.0, Paint()
    ..color = Theme.of(context).backgroundColor);
    canvas.drawCircle(center, 10.0, dotPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
