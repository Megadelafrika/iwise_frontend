import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iwisebudgetapp/budgets/AppAndBottomNavigation/Bottom_Navigation.dart';
import 'package:iwisebudgetapp/budgets/AppAndBottomNavigation/CreateBudget_AppBar.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_April.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_August.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_December.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_January.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_February.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_July.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_June.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_March.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_May.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_November.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_October.dart';
import 'package:iwisebudgetapp/budgets/CreateBudgetTabBarViews/CreateTab_September.dart';


/// This Widget is the main application widget.
//void main() => runApp(MaterialApp(
//  initialRoute: '/home',
//  routes: {
//    '/': (context) => Home(),
//    '/home': (context) => Home(),
//    '/addBudget': (context) => AddBudget(),
//    '/savedBudget': (context) => SavedBudget(),
//    '/wellDone': (context) => WellDoneScreen(),
//
//  },
//));

class CreateBudget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        backgroundColor: Colors.blue[50],
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(160.0),
          // here the desired height

          child: AppAndTabBar(),
        ),

        body: TabBarView(
          children: <Widget>[
            CreateTab_January(),
            CreateTab_February(),
            CreateTab_March(),
            CreateTab_April(),
            CreateTab_May(),
            CreateTab_June(),
            CreateTab_July(),
            CreateTab_August(),
            CreateTab_September(),
            CreateTab_October(),
            CreateTab_November(),
            CreateTab_December(),
          ],
        ),

        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
