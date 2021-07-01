// import 'dart:html';

import 'package:admin_tow_tech/Screens/Bookings/cityTocity.dart';
import 'package:admin_tow_tech/Screens/Bookings/withInCity.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingsDashboard extends StatefulWidget {
  @override
  _BookingsDashboardState createState() => _BookingsDashboardState();
}

class _BookingsDashboardState extends State<BookingsDashboard> {
  bool withInCity = true;

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
                  "Bookings",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.22,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                withInCity = true;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.fromLTRB(30, 20, 35, 20),
                                decoration: BoxDecoration(
                                  color: withInCity
                                      ? Color(0xff46426c)
                                      : Colors.transparent,
                                  // color: Color(0xff292d3f),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "WithIn City",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: withInCity
                                          ? Colors.white
                                          : Colors.white54),
                                )),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                withInCity = false;
                              });
                            },
                            child: Container(
                                padding: EdgeInsets.fromLTRB(35, 20, 30, 20),
                                decoration: BoxDecoration(
                                  color: withInCity
                                      ? Colors.transparent
                                      : Color(0xff46426c),
                                  // color: Color(0xff292d3f),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  "City To City",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17,
                                      color: withInCity
                                          ? Colors.white54
                                          : Colors.white),
                                )),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            withInCity ? WithInCity() : CityToCity(),
          ],
        ),
      ),
    );
  }
}
