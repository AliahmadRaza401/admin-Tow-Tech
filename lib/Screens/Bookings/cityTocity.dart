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
      child: Text("city to City"),
    );
  }
}
