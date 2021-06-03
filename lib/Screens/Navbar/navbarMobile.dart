import 'package:flutter/material.dart';

import 'companyName.dart';
import 'navbarItemList.dart';
import 'navbarItems.dart';

class NavbarMobile extends StatefulWidget {
  @override
  _NavbarMobileState createState() => _NavbarMobileState();
}

class _NavbarMobileState extends State<NavbarMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.2,
      color: Color(0xff292d3f),
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
              active: false,
            ),
          )
        ],
      ),
    );
  }
}
