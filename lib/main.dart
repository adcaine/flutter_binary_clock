// Copyright 2019 Allan Caine. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_binary_clock/date_time_stream.dart';

import 'full_clock_display.dart';

void main() => runApp(BinaryClockApplication());

class BinaryClockApplication extends StatelessWidget {
  final DateTimeStream _dateTimeStream = DateTimeStream();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Center(
          child: StreamBuilder<DateTime>(
            initialData: DateTime.now(),
            stream: _dateTimeStream.stream,
            builder: (context, snapshot) {
              return SingleChildScrollView(
                scrollDirection:
                    MediaQuery.of(context).orientation == Orientation.portrait
                        ? Axis.horizontal
                        : Axis.vertical,
                child: FullClockDisplay(
                  dateTime: snapshot.data,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
