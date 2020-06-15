import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
<<<<<<< HEAD:lib/main.dart
import 'package:flutterapp/iWallet/iwallet.dart';
import 'package:flutterapp/onboardingScreen/screens/landingPage.dart';
=======


import 'package:iwisebudgetapp/splashscreen/splashScreen.dart';
import 'package:iwisebudgetapp/onboardingScreen/screens/landingPage.dart';
import 'package:iwisebudgetapp/iWallet/iwallet.dart';
import 'package:iwisebudgetapp/budgets/screens/add-budget.dart';
import 'package:iwisebudgetapp/budgets/screens/saved-budgets.dart';
import 'package:iwisebudgetapp/budgets/screens/welldone-screen.dart';
import 'package:iwisebudgetapp/budgets/screens/create-budget.dart';
import 'package:iwisebudgetapp/signup/signUp.dart';
import 'package:iwisebudgetapp/login/login.dart';
import 'budgets/screens/add-budget.dart';
import 'budgets/screens/create-budget.dart';
import 'package:iwisebudgetapp/components/individualDashboard.dart';

>>>>>>> 3d1e62f14b5cc34e6932e435ae4189a12f6ef42e:iwise_budget_app/lib/main.dart

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
      Platform.isAndroid ? Brightness.dark : Brightness.light,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarDividerColor: Colors.grey,
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
//        platform: TargetPlatform.android,
      ),
<<<<<<< HEAD:lib/main.dart
//      initialRoute: ,
      home: LandingPage(),
      routes: {
        '/wallet':(context) => Wallet(),
      },
=======
      home: SplashScreen(),
      routes: {
        '/individualDashboard': (context) => IndividualDashboard(),
        '/login': (context) => Login(),
        '/onboarding': (context) => LandingPage(),
        '/signUp': (context) => SignUp(),
        '/wallet': (context) => Wallet(),
        '/createBudget': (context) => CreateBudget(),
        '/addBudget': (context) => AddBudget(),
        '/savedBudget': (context) => SavedBudget(),
        '/wellDone': (context) => WellDoneScreen(),
      },

>>>>>>> 3d1e62f14b5cc34e6932e435ae4189a12f6ef42e:iwise_budget_app/lib/main.dart
    );
  }

}
