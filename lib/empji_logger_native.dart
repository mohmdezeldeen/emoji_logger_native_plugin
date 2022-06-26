import 'dart:async';

import 'package:flutter/services.dart';

class EmpjiLoggerNative {
  static const MethodChannel _channel = MethodChannel('empji_logger_native');

  static Future<void> debug(String message) async {
    await _channel.invokeMethod('debug', {'message': '🐞 $message'});
  }

  static Future<void> error(String message) async {
    await _channel.invokeMethod('error', {'message': '🚨 $message'});
  }
}
