// Copyright 2019 Allan Caine. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

/// This class models a single binary bit and displays the bit's decimal value.

class LightBulb extends StatelessWidget {
  final Color onColor;
  final Color offColor;
  final Color borderColor;
  final Duration duration;
  final double diameter;
  final bool isOn;
  final String text;

  LightBulb(
      {@required this.onColor,
      @required this.offColor,
      @required this.borderColor,
      @required this.duration,
      @required this.diameter,
      @required this.isOn,
      @required this.text});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: <Widget>[
        AnimatedContainer(
          duration: duration,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isOn ? onColor : offColor,
            border: Border.all(color: isOn ? onColor : borderColor)
          ),
          width: diameter,
          height: diameter,
        ),
        Text(text, style: TextStyle(
          fontSize: diameter - 4,
          color: offColor,
          decoration: TextDecoration.none
        ),)
      ],
    );
  }
}
