// Copyright 2019 Allan Caine. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'dart:async';

/// This class emits a stream of [DateTime] objects at interval [Duration].
///
class DateTimeStream {

  StreamController<DateTime> _streamController;

  DateTimeStream({Duration duration = const Duration(seconds: 1)}) {
    _streamController = StreamController<DateTime>();

    Timer.periodic(duration, _updateTime);
  }

  void dispose() {
    _streamController.close();
  }

  Stream<DateTime> get stream => _streamController.stream;

  void _updateTime(Timer timer) {
    _streamController.sink.add(DateTime.now());
  }


}