import 'package:flutter/cupertino.dart';
<<<<<<< HEAD:lib/onboardingScreen/widgets/sliderItem/slider.dart
// import 'package:flutterapp/onboardingScreen/constants/constants.dart';
import 'package:flutterapp/onboardingScreen/models/slider.dart';
=======
import 'package:iwisebudgetapp/onboardingScreen/models/slider.dart';
>>>>>>> 3d1e62f14b5cc34e6932e435ae4189a12f6ef42e:lib/onboardingScreen/onboardingScreen/widgets/sliderItem/slider.dart

class SlideItem extends StatelessWidget {
  final int index;
  SlideItem(this.index);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          sliderArrayList[index].sliderHeading,
          style: TextStyle(
            color: Color(0xff0076BC),
            fontWeight: FontWeight.w700,
            fontSize: 24.0,
          ),
        ),
        SizedBox(
          height: 25.0,
        ),
        Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Text(
              sliderArrayList[index].sliderSubHeading,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14.0,
                color: Color(0xff555A5B)
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        SizedBox(
          height: 35.0,
        ),
        Container(
          height: MediaQuery.of(context).size.width * 0.6,
          width: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(sliderArrayList[index].sliderImageUrl))),
        ),
        SizedBox(
          height: 60.0,
        ),

      ],
    );
  }
}
