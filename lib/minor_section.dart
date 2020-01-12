import 'light_bulb_array.dart';
import 'package:flutter/material.dart';

/// This class models the hour, minute, and seconds sections
/// of the clock.  It displays two horizontally aligned [LightBulbArray]

class MinorSection extends StatelessWidget {
  final int firstRowSize;
  final int displayValue;
  final Color onColor;
  final Color offColor;
  final Color borderColor;
  final Duration duration;
  final int size;
  final double diameter;

  MinorSection(
      {this.firstRowSize = 3,
      @required this.displayValue,
      @required this.onColor,
      @required this.offColor,
      @required this.borderColor,
      @required this.duration,
      @required this.size,
      @required this.diameter});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: LightBulbArray(
            onColor: onColor,
            offColor: offColor,
            borderColor: borderColor,
            duration: duration,
            displayValue: displayValue ~/ 10,
            size: firstRowSize,
            diameter: diameter,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: LightBulbArray(
            onColor: onColor,
            offColor: offColor,
            borderColor: borderColor,
            duration: duration,
            displayValue: displayValue % 10,
            size: size,
            diameter: diameter,
          ),
        )
      ],
    );
  }
}
