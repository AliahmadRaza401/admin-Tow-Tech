// import 'dart:html';
import 'package:admin_tow_tech/Screens/Charts/LineChart/lineChart.dart';
import 'package:admin_tow_tech/Screens/Charts/PieChart/pieChart.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DashboardDesktop extends StatefulWidget {
  @override
  _DashboardDesktopState createState() => _DashboardDesktopState();
}

class _DashboardDesktopState extends State<DashboardDesktop> {
  final db = FirebaseFirestore.instance;
  var firebaseUser = FirebaseAuth.instance.currentUser;

  void _onPressed() {
    db.collection("Users").get().then((querySnapshot) {
      querySnapshot.docs.forEach((result) {
        print(result.data());
      });
    });
  }

  @override
  void initState() {
    super.initState();
    // _onPressed();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      margin: EdgeInsets.only(top: 20, left: 20, bottom: 20),
      width: MediaQuery.of(context).size.width * 0.82,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Dashboard",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.62,
                      margin: EdgeInsets.only(top: 30),
                      child: Column(
                        children: [
                          // Dashboard Row Tow & Technician
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              // Tow Vehicle
                              Column(
                                children: [
                                  towVehicle(),
                                ],
                              ),
                              // Technician
                              Column(
                                children: [
                                  technician(),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width * 0.62,
                                height: 300,
                                child: LineChartSample1(),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      padding: EdgeInsets.only(bottom: 70),
                      width: MediaQuery.of(context).size.width * 0.18,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff2c274c),
                            Color(0xff46426c),
                          ],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                        // color: Color(0xff292d3f),
                      ),
                      child: PieChartSample2(),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget towVehicle() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      padding: EdgeInsets.fromLTRB(30, 30, 5, 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff2c274c),
            Color(0xff46426c),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        // color: Color(0xff292d3f),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Tow Vehicle",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff827daa)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "04",
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
              Column(
                children: [
                  Image.asset(
                    "assets/png/tow.png",
                    width: MediaQuery.of(context).size.width * 0.15,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget technician() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.3,
      padding: EdgeInsets.fromLTRB(30, 30, 0, 30),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff2c274c),
            Color(0xff46426c),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
        // color: Color(0xff292d3f),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    "Technician",
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff827daa)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "07",
                    style: TextStyle(
                        fontSize: 60,
                        color: Colors.white,
                        fontWeight: FontWeight.w900),
                  )
                ],
              ),
              Column(
                children: [
                  Container(
                    child: Image.asset(
                      "assets/png/techb.png",
                      width: MediaQuery.of(context).size.width * 0.17,
                      height: 100,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
