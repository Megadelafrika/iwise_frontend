import 'package:flutter/material.dart';
import 'splashScreen.dart';

void main() => runApp(MaterialApp(home: SplashScreen()));

class MyApp extends StatelessWidget {
  build(context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Iwise'),
      ),
    ));
  }
}
