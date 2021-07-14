import 'package:admin_tow_tech/Screens/Login/Login.dart';
import 'package:flutter/material.dart';

import 'companyName.dart';
import 'navbarItemList.dart';
import 'navbarItems.dart';

class NavbarDesktop extends StatefulWidget {
  @override
  _NavbarDesktopState createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.15,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff2c274c),
            Color(0xff46426c),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      // color: Color(0xff292d3f),
      child: Stack(
        children: [
          CompanyName(),
          Align(
            alignment: Alignment.center,
            child: NavBar(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: NavBarItem(
              icon: Icons.logout,
              name: "Log Out",
              active: false,
              touched: () {
                print("Log Out");
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          )
        ],
      ),
    );
  }
}
