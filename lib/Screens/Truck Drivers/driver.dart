import 'package:admin_tow_tech/Screens/Truck%20Drivers/driverDesktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'driverMobile.dart';


class Driver extends StatefulWidget {
  @override
  _DriverState createState() => _DriverState();
}

class _DriverState extends State<Driver> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DriverMobile(),
      desktop: DriverDesktop(),
    );
  }
}
