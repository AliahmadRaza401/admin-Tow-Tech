import 'package:flutter/material.dart';

class DriverDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      margin: EdgeInsets.only(top: 20, left: 20, bottom: 20),
      width: MediaQuery.of(context).size.width * 0.82,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20)
      ),
      child: Column(
        children: [
          Row(
            children: [
              Text("Drivers",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: Colors.white
                ),),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width:MediaQuery.of(context).size.width * 0.82,
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
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Text("Available Drivers",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff827daa)
                ),
                ),
                SizedBox(
                  height: 30,
                ),
                Table(
                  textDirection: TextDirection.rtl,
                  defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                  border:TableBorder.all(width: 2.0,color:Color(0xff827daa)),
                  children: [
                    TableRow(
                        children: [
                          Text("Education",textScaleFactor: 1.5,),
                          Text("Institution name",textScaleFactor: 1.5),
                          Text("University",textScaleFactor: 1.5),
                        ]
                    ),
                    TableRow(
                        children: [
                          Text("Education",textScaleFactor: 1.5,),
                          Text("Institution name",textScaleFactor: 1.5),
                          Text("University",textScaleFactor: 1.5),
                        ]
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
