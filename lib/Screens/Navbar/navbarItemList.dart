import 'package:admin_tow_tech/Provider/myprovider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'navbarItems.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<bool> selected = [true, false, false, false, false];
  void select(int n) {
    for (int i = 0; i < 5; i++) {
      if (i != n) {
        selected[i] = false;
      } else {
        selected[i] = true;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final dataProvider = Provider.of<MyProvider>(context);

    return Container(
      height: 350.0,
      child: Column(
        children: [
          NavBarItem(
            icon: Icons.home,
            name: "Dashboard",
            active: selected[0],
            touched: () {
              setState(() {
                select(0);
                dataProvider.navigate("Dashboard");
              });
            },
          ),
          NavBarItem(
            icon: Icons.book_rounded,
            name: "Bookings",
            active: selected[1],
            touched: () {
              setState(() {
                select(1);
                dataProvider.navigate("Bookings");
              });
            },
          ),
          NavBarItem(
            icon: Icons.directions_car_outlined,
            name: "Truck Drivers",
            active: selected[2],
            touched: () {
              dataProvider.navigate("Truck Drivers");
              setState(() {
                select(2);
              });
            },
          ),
          NavBarItem(
            icon: Icons.car_repair,
            name: "Technician",
            active: selected[3],
            touched: () {
              dataProvider.navigate("Technician");
              setState(() {
                select(3);
              });
            },
          ),
          NavBarItem(
            icon: Icons.person_rounded,
            name: "Users",
            active: selected[4],
            touched: () {
              dataProvider.navigate("Users");
              setState(() {
                select(4);
              });
            },
          ),
        ],
      ),
    );
  }
}
