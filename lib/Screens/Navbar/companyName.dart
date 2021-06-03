import 'package:flutter/material.dart';

class CompanyName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      height: 90.0,
      child: Center(
        child: Image.asset("assets/png/wlogo.png",)
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     Text(
        //       'Tow',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w700,
        //         color: Colors.white,
        //         fontSize: 16.0,
        //       ),
        //     ),
        //     Text(
        //       ' & Tech',
        //       style: TextStyle(
        //         fontWeight: FontWeight.w300,
        //         color: Colors.white70,
        //         fontSize: 16.0,
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}