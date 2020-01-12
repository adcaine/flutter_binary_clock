// Copyright 2019 Allan Caine. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'minor_section.dart';

class FullClockDisplay extends StatelessWidget {
  static const _duration = const Duration(milliseconds: 500);
  static const _onColor = Colors.green;
  static const _offColor = Colors.black38;
  static const _size = 4;
  static const _borderColor = Colors.grey;
  static const _diameter = 64.0;

  final DateTime dateTime;

  FullClockDisplay({@required this.dateTime});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MinorSection(
            firstRowSize: 2,
            displayValue: dateTime.hour,
            duration: _duration,
            onColor: _onColor,
            offColor: _offColor,
            size: _size,
            borderColor: _borderColor,
            diameter: _diameter,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MinorSection(
            displayValue: dateTime.minute,
            duration: _duration,
            onColor: _onColor,
            offColor: _offColor,
            size: _size,
            borderColor: _borderColor,
            diameter: _diameter,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: MinorSection(
            displayValue: dateTime.second,
            duration: _duration,
            onColor: _onColor,
            offColor: _offColor,
            size: _size,
            borderColor: _borderColor,
            diameter: _diameter,
          ),
        )
      ],
    );
  }
}
