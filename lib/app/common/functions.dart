import 'package:flutter/scheduler.dart';

/// Add common functions

class Functions {
  /// Schedule a function after initState()
  static void afterInit(Function function) {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      function();
    });
  }
}
