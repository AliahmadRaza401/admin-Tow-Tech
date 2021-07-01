import 'package:admin_tow_tech/Database/getCityToCity.dart';
import 'package:admin_tow_tech/Widget/table.dart';
import 'package:flutter/material.dart';

class CityToCity extends StatelessWidget {
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
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "City To City Bookings",
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff827daa)),
            ),
          ),
          GetCityToCity(),
        ],
      ),
    );
  }
}
