import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iwisebudgetapp/budgets/AppAndBottomNavigation/Bottom_Navigation.dart';

class NotificationPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  static const String _title = 'Notification';
  static const String _deleteNotification = 'Delete Notification';
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        _title,
        style: TextStyle(color: Colors.grey[800]),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
      backgroundColor: Colors.white,
      elevation: 0.0,
      actions: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 20.0),
          child: IconButton(
            icon: Icon(
              Icons.chevron_left,
              color: Colors.blueGrey[800],
              size: 26.0,
            ),
            onPressed: () {},
          ),
          child: IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.blueGrey[800],
              size: 26.0,
            ),
            onPressed: () {},
          ),
        ),
      ],
      body: Center(
        child: Text(_deleteNotification, textAlign: TextAlign.center),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(20),
          ),
        ),
//        backgroundColor: Colors.white,
//        elevation: 0.0,
        icon: IconButton(
          icon: Icon(
            Icons.delete_outline,
            color: Colors.blueGrey[800],
            size: 26.0,
          ),
          onPressed: () {},
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
