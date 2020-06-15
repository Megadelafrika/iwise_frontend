import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
<<<<<<< HEAD:lib/onboardingScreen/screens/landingPage.dart
import 'package:flutterapp/onboardingScreen/view/layoutView.dart';
=======
import 'package:iwisebudgetapp/onboardingScreen/view/layoutView.dart';
>>>>>>> 3d1e62f14b5cc34e6932e435ae4189a12f6ef42e:lib/onboardingScreen/onboardingScreen/screens/landingPage.dart

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
