import 'package:flutter/material.dart';
import 'package:legends/screens/hairStyle.dart';
import 'package:legends/screens/hairStylist.dart';
// import 'package:legends/screens/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'Roboto'),
      debugShowCheckedModeBanner: false,
      home: Wrapper(),
    );
  }
}

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HairStyleScreen();
  }
}
