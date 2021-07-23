import 'package:flutter/material.dart';
import 'package:ui_housy/screen/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UI Housy',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
