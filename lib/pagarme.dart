import 'dart:async';

import 'package:flutter/services.dart';

class PagarMe {
  static const MethodChannel _channel =
      const MethodChannel('pagarme');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
