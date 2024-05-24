import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';


class DeviceMode {

  static bool isDarkMode() {
    var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
    return brightness == Brightness.dark;
  }
}

