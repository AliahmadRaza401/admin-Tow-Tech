import 'package:admin_tow_tech/Screens/Dashboard/dashboardDesktop.dart';
import 'package:admin_tow_tech/Screens/Dashboard/dashboardMobile.dart';
import 'package:admin_tow_tech/Screens/Navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DashboardMobile(),
      desktop: DashboardDesktop(),
    );
  }
}
