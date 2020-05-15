import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwisebudgetapp/constants/constants.dart';
import 'package:iwisebudgetapp/views/slider_view.dart';
import 'package:iwisebudgetapp/widgets/customfonts.dart';

class LandingPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: onBordingBody(),
    );
  }

  Widget onBordingBody() => Container(
    child: SliderLayoutView(),
  );
}
