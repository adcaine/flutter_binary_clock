// Copyright 2019 Allan Caine. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'dart:math';

import 'light_bulb.dart';

/// This class models an array of light bulbs.
/// The array is displayed a column of [LightBulb].  Together they
/// represent a single digit 0 - 0.
///
class LightBulbArray extends StatelessWidget {
  final Color onColor;
  final Color offColor;
  final Color borderColor;
  final Duration duration;
  final int size;
  final double diameter;
  final int displayValue;

  LightBulbArray(
      {@required this.onColor,
      @required this.offColor,
      @required this.borderColor,
      @required this.duration,
      @required this.size,
      @required this.diameter,
      @required this.displayValue});

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        verticalDirection: VerticalDirection.up,
        children: List.generate(size, _getLightBulbAt));
  }

  Widget _getLightBulbAt(int index) {
    final int decimalValue = pow(2, index);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: LightBulb(
        onColor: onColor,
        offColor: offColor,
        diameter: diameter,
        duration: duration,
        borderColor: borderColor,
        isOn: ((displayValue >> index) & 1) == 1,
        text: "$decimalValue",
      ),
    );
  }
}
