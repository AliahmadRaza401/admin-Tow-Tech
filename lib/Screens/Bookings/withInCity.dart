import 'package:flutter/material.dart';

class WithInCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.82,
      padding: EdgeInsets.all(10),
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
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30),
            child: Text("Within City Bookings",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff827daa)
              ),
            ),
          ),
          Table(
            textDirection: TextDirection.rtl,
            defaultVerticalAlignment: TableCellVerticalAlignment.bottom,
            border: TableBorder.all(width: 2.0, color: Colors.white12),
            children: [
              TableRow(children: [
                Text(
                  "Education",
                  textScaleFactor: 1.5,
                ),
                Text("Institution name", textScaleFactor: 1.5),
                Text("University", textScaleFactor: 1.5),
              ]),
              TableRow(children: [
                Text(
                  "Education",
                  textScaleFactor: 1.5,
                ),
                Text("Institution name", textScaleFactor: 1.5),
                Text("University", textScaleFactor: 1.5),
              ]),
            ],
          ),
        ],
      ),
    );
  }
}