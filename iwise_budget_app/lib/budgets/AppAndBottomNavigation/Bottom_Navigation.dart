
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatefulWidget{

  @override
  State<StatefulWidget> createState() => _BottomNavigationState();
}

int _currentIndex = 0;

class _BottomNavigationState extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30.0,),
            title: Text('Home'),
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.equalizer, size: 30.0,),
            title: Text('Insights'),
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.receipt, size: 30.0,),
            title: Text('Transactions'),
            backgroundColor: Colors.blue,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_wallet, size: 30.0,),
            title: Text('Wallet'),
            backgroundColor: Colors.blue,
          ),
        ],

        onTap: (index){
          setState(() {
            _currentIndex = index;
          });
        },
      );

  }
}

