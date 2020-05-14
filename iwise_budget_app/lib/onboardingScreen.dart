import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Onboarding extends StatefulWidget {
  @override
  _OnboardingState createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final numPages = 3;
  final PageController _pageController = PageController(initialPage: 0);
  int currentPage = 0;

List<Widget> _buildPageIndicator(){
  List<Widget> list = [];
  for(int i = 0; i < numPages; i++){
    list.add(i == currentPage ? indicator(true) : indicator(false));
  }
  return list;
}

  Widget indicator(bool isActive){
  return AnimatedContainer(duration: Duration(milliseconds: 150),
  margin: EdgeInsets.symmetric(horizontal: 16.0),
    height: 16.0,
    width: isActive ? 24.0: 16.0,
    decoration: BoxDecoration(color: isActive ? Color(0xffE5E5E5) : Color(0xff7851D3),
    borderRadius: BorderRadius.all(Radius.circular(12))
    ),
    
  );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
            Container(alignment: Alignment.centerLeft,
              child: FlatButton(onPressed: () => print('skip'),
              child: Text('skip',
              style: TextStyle(
                fontSize: 15.0,
                color: Color(0xff555A5B),
              ),),
              ),
            ),
          //The first onboarding page.
            Container(height: 600.0,
            child: PageView(
              physics: ClampingScrollPhysics(),
              controller: _pageController,
              onPageChanged: (int page){
                setState(() {
                  currentPage = page ;
                });
              },
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: Text('Budget your Income',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff0076BC)
                          ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.0, width: 20.0),
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text('Make the things that excites you possible by telling your money where to go',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Color(0xff555A5B)
                          ),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset('assets/flamenco-payment-processed 1.png',
                        height: 261.0,
                        width: 209.0,),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            ),

          //The second onboarding page.
            Container(height: 600.0,
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page){
                  setState(() {
                    currentPage = page ;
                  });
                },
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Simplified Investment Solution',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0076BC)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0, width: 20.0),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Don’t depend on a single income, make investment to create a second source',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff555A5B)
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Image.asset('assets/payment-processed-6 1.png',
                            height: 261.0,
                            width: 209.0,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          //The third onboarding page.
            Container(height: 600.0,
              child: PageView(
                physics: ClampingScrollPhysics(),
                controller: _pageController,
                onPageChanged: (int page){
                  setState(() {
                    currentPage = page ;
                  });
                },
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('Quick Access to Loan',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff0076BC)
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 30.0, width: 20.0),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text('Get access to loan for your emergencies anytime',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xff555A5B)
                              ),
                            ),
                          ),
                        ),
                        Center(
                          child: Image.asset('assets/bermuda-payment-processed 1.png',
                            height: 261.0,
                            width: 209.0,),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: _buildPageIndicator(),)
          ],),
        ),
      ),
    );
  }
}

