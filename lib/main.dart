import 'package:amazonajmal/screen.dart';
import 'package:amazonajmal/screen_home.dart';
import 'package:flutter/material.dart';

const GotoNext = 'Next page';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Screen(),
    );
  }
}
