
import 'dart:async';

import 'package:flutter/services.dart';

class RxBle {
  static const MethodChannel _channel =
      const MethodChannel('rx_ble');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
