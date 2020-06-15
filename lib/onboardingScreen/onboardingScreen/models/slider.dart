import 'package:flutter/cupertino.dart';
<<<<<<< HEAD:lib/onboardingScreen/models/slider.dart
import 'package:flutterapp/onboardingScreen/constants/constants.dart';
=======
import 'package:iwisebudgetapp/onboardingScreen/constants/constants.dart';
>>>>>>> 3d1e62f14b5cc34e6932e435ae4189a12f6ef42e:lib/onboardingScreen/onboardingScreen/models/slider.dart

class Slider {
  final String sliderImageUrl;
  final String sliderHeading;
  final String sliderSubHeading;

  Slider(
      {@required this.sliderImageUrl,
        @required this.sliderHeading,
        @required this.sliderSubHeading});
}

final sliderArrayList = [
  Slider(
      sliderImageUrl: 'assets/flamenco-payment-processed 1.png',
      sliderHeading: Constants.SLIDER_HEADING_1,
      sliderSubHeading: Constants.SLIDER_DESC1),
  Slider(
      sliderImageUrl: 'assets/payment-processed-6 1.png',
      sliderHeading: Constants.SLIDER_HEADING_2,
      sliderSubHeading: Constants.SLIDER_DESC2),
  Slider(
      sliderImageUrl: 'assets/bermuda-payment-processed 1.png',
      sliderHeading: Constants.SLIDER_HEADING_3,
      sliderSubHeading: Constants.SLIDER_DESC3),
];
