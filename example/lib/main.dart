import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:empji_logger_native/empji_logger_native.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Column(
          children: [
            RaisedButton(
              onPressed: () {
                EmpjiLoggerNative.debug('this is debug');
              },
              child: Text('debug'),
            ),
            RaisedButton(
              onPressed: () {
                EmpjiLoggerNative.error('this is error');
              },
              child: Text('error'),
            ),
          ],
        ),
      ),
    );
  }
}
