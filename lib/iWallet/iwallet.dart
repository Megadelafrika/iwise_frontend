import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(10.0),
                  child: Text(
                    "Hello world",
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      height: 150.0,
                      width: 150.0,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            print('hello there');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/Vector (1).png'),
                                SizedBox(height: 10.0),
                                Text("Celo dollar")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 15.0),
                      height: 150.0,
                      width: 150.0,
                      child: Card(
                        child: new InkWell(
                          onTap: () {
                            print('hello there');
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 10.0),
                            child: Column(
                              children: <Widget>[
                                Image.asset('assets/Vector.png'),
                                SizedBox(height: 10.0),
                                Text("Naira")
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: 3,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) => Container(
                        width: MediaQuery.of(context).size.width,
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.0, vertical: 10.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 300,
                              height: 40.0,
                              child: Card(
                                  elevation: 5.0,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                  ),
                                  ),
                            ),
                          ],
                        )),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
