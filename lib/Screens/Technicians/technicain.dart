import 'package:admin_tow_tech/Screens/Technicians/technicianDesktop.dart';
import 'package:admin_tow_tech/Screens/Technicians/technicianMobile.dart';
import 'package:admin_tow_tech/Screens/Truck%20Drivers/driverMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'TechnicianMobile.dart';


class Technician extends StatefulWidget {
  @override
  _TechnicianState createState() => _TechnicianState();
}

class _TechnicianState extends State<Technician> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: DriverMobile(),
      desktop: TechnicianDesktop(),
    );
  }
}
