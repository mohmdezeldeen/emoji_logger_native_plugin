import 'dart:async';
// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html show window;

import 'package:flutter/services.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

/// A web implementation of the EmpjiLoggerNative plugin.
class EmpjiLoggerNativeWeb {
  static void registerWith(Registrar registrar) {
    final MethodChannel channel = MethodChannel(
      'empji_logger_native',
      const StandardMethodCodec(),
      registrar,
    );

    final pluginInstance = EmpjiLoggerNativeWeb();
    channel.setMethodCallHandler(pluginInstance.handleMethodCall);
  }

  /// Handles method calls over the MethodChannel of this plugin.
  /// Note: Check the "federated" architecture for a new way of doing this:
  /// https://flutter.dev/go/federated-plugins
  Future<dynamic> handleMethodCall(MethodCall call) async {
    switch (call.method) {
      case 'debug':
        final message = call.arguments['message'];
        html.window.console.log(message);
        break;
      case 'error':
        final message = call.arguments['message'];
        html.window.console.warn(message);
        break;
      default:
        throw PlatformException(
          code: 'Unimplemented',
          details: 'empji_logger_native for web doesn\'t implement \'${call.method}\'',
        );
    }
  }

}
