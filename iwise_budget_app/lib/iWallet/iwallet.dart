import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:iwisebudgetapp/budgets/AppAndBottomNavigation/Bottom_Navigation.dart';
import 'package:iwisebudgetapp/components/dashboardCard.dart';
import 'package:iwisebudgetapp/components/drawer.dart';
import 'package:iwisebudgetapp/components/colors.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar:AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: Container(
          alignment: Alignment.topLeft,
          child: Text('Wallet ',
              style: TextStyle(fontSize: 24),),
        ),
        actions: [
          Icon(
            Icons.notifications,
            color: white,
          )
        ],

      ),
        drawer: CustomDrawer(),
        backgroundColor:backgroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: mainColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10)),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left:16,right: 24, top: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal:16.0),
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      padding: EdgeInsets.all(10.0),
                      child: Text("Select",
                        style: TextStyle(
                            color: Color(0xff0076BC),
                            fontSize: 18.0
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),

                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0),
                child: Text('Coming Soon',style: TextStyle(fontSize: 16),),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal:16.0),
                child: Row(
                  children: [
                    DashboardCard(
                      img: 'assets/icon1.svg',
                      iconColor: Color(0xff8D6C9F),
                      boxColor: Color(0xff8D6C9F).withOpacity(0.1),
                      title: 'Loans',

                    ),
                    SizedBox(width: 40,),
                    DashboardCard(
                      img: 'assets/icon2.svg',
                      iconColor: Color(0xff8D6C9F),
                      boxColor: Color(0xff8D6C9F).withOpacity(0.1),
                      title: 'Investments',
                    ),
                    SizedBox(width: 40,),
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
                    )
                  ],
                ),
              ),
              Divider(),
              SizedBox(height: 24,),
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
//
//        Container(
//          padding: EdgeInsets.all(20.0),
//          child: Container(
//            child: Column(
//              children: <Widget>[
//                Container(
//                  alignment: Alignment.topLeft,
//                  padding: EdgeInsets.all(10.0),
//                  child: Text(
//                    "Select",
//                    style: TextStyle(
//                      color: Color(0xff0076BC),
//                      fontSize: 18.0
//                    ),
//                  ),
//                ),
//                SizedBox(height: 20.0,),
//                Divider(height: 5.0, color: Colors.grey,),
//                Row(
//                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                  children: <Widget>[
//                    Container(
//                      padding: EdgeInsets.symmetric(
//                          horizontal: 10.0, vertical: 15.0),
//                      height: 150.0,
//                      width: 150.0,
//                      child: Card(
//                        child: new InkWell(
//                          onTap: () {
//                            print('hello there');
//                          },
//                          child: Container(
//                            alignment: Alignment.center,
//                            padding: EdgeInsets.symmetric(
//                                horizontal: 10.0, vertical: 10.0),
//                            child: Column(
//                              children: <Widget>[
//                                Image.asset('assets/Vector (1).png'),
//                                SizedBox(height: 10.0),
//                                Text("Celo dollar")
//                              ],
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                    Container(
//                      padding: EdgeInsets.symmetric(
//                          horizontal: 10.0, vertical: 15.0),
//                      height: 150.0,
//                      width: 150.0,
//                      child: Card(
//                        child: new InkWell(
//                          onTap: () {
//                            print('hello there');
//                          },
//                          child: Container(
//                            alignment: Alignment.center,
//                            padding: EdgeInsets.symmetric(
//                                horizontal: 10.0, vertical: 10.0),
//                            child: Column(
//                              children: <Widget>[
//                                Image.asset('assets/Vector.png'),
//                                SizedBox(height: 10.0),
//                                Text("Naira")
//                              ],
//                            ),
//                          ),
//                        ),
//                      ),
//                    ),
//                  ],
//                ),
//                Expanded(
//                  child: ListView.builder(
//                    itemCount: 3,
//                    shrinkWrap: true,
//                    itemBuilder: (BuildContext context, int index) => Container(
//                        width: MediaQuery.of(context).size.width,
//                        padding: EdgeInsets.symmetric(
//                            horizontal: 10.0, vertical: 10.0),
//                        child: Row(
//                          children: <Widget>[
//                            Container(
//                              width: 300,
//                              height: 40.0,
//                              child: Card(
//                                  elevation: 5.0,
//                                  shape: RoundedRectangleBorder(
//                                    borderRadius: BorderRadius.circular(5.0),
//                                  ),
//                                  child: Padding(
//                                    padding: const EdgeInsets.all(10.0),
//                                  ),
//                                  ),
//                            ),
//                          ],
//                        )),
//                  ),
//                )
//              ],
//            ),
//          ),
//        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
