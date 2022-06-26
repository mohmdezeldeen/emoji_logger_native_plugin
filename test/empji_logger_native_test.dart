import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:empji_logger_native/empji_logger_native.dart';

void main() {
  const MethodChannel channel = MethodChannel('empji_logger_native');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '🐞 this is debug';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('debug', () {
    expect(EmpjiLoggerNative.debug('this is debug'), '🐞 this is debug');
  });
  // test('error', () async {
  //   expect(EmpjiLoggerNative.error('this is error'), '🚨 this is error');
  // });
}
