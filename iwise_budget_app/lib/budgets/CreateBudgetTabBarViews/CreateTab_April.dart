import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class CreateTab_April extends StatefulWidget{


  @override
  _CreateTab_AprilState createState() => _CreateTab_AprilState();
}

class _CreateTab_AprilState extends State<CreateTab_April> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,

      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset('assets/mirage-empty.png'),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 20.0,),
              child: Text('Nothing Here',
                style: TextStyle(
                  color: Colors.grey[600],
                  fontFamily: 'Roboto/Roboto-Regular.ttf',
                ),

              ),

            ),

            Container(
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(
                  Radius.circular(10.0),
                ),
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/addBudget');
                },
                padding: EdgeInsets.all(5.0),
                color: Colors.white,
                tooltip: 'Create A Budget',
                icon: Icon(
                  Icons.add,
                  color: Colors.blue,
                  size: 30.0,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0,),
              child: FlatButton(
                child: Text('Create A Budget',
                  style: TextStyle(
                    fontFamily: 'Roboto/Roboto-Medium.ttf',
                    fontSize: 20.0,
                    color: Colors.blue[700],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                    decoration: TextDecoration.underline,
                  ),
                ),
                onPressed: (){
                  Navigator.pushNamed(context, '/addBudget');
                },
              ),
            ),

          ],
        ),

      ],
    );
  }
}