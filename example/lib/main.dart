import 'dart:async';

import 'package:flutter/material.dart';
import 'package:safe_area_height/safe_area_height.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _safeAreaHeight = 0;
  double _safeAreaHeightBottom = 0;

  @override
  void initState() {
    super.initState();
    getSafeAreaHeight();
  }

  Future<void> getSafeAreaHeight() async {
    double safeAreaHeight = 0;
    double safeAreaHeightBottom = 0;

    safeAreaHeight = await SafeAreaHeight.safeAreaHeightTop;
    safeAreaHeightBottom = await SafeAreaHeight.safeAreaHeightBottom;

    setState(() {
      _safeAreaHeight = safeAreaHeight;
      _safeAreaHeightBottom = safeAreaHeightBottom;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('$_safeAreaHeight $_safeAreaHeightBottom'),
        ),
      ),
    );
  }
}
