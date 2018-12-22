import 'dart:async';

import 'package:flutter/services.dart';

class SafeAreaHeight {
  static const MethodChannel _channel =
      const MethodChannel('safe_area_height');

  static Future<double> get safeAreaHeightTop async {
    final double height = await _channel.invokeMethod('getSafeAreaHeightTop');
    return height;
  }

  static Future<double> get safeAreaHeightBottom async {
    final double height = await _channel.invokeMethod('getSafeAreaHeightBottom');
    return height;
  }
}
