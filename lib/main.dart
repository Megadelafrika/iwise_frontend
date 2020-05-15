import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwise/screens/splashScreen.dart';

void main() {
  runApp(Iwise());
}
class Iwise extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Raleway'
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
