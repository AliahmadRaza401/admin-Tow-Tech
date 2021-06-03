import 'package:admin_tow_tech/Screens/Bookings/bookingsDashboard.dart';
import 'package:admin_tow_tech/Screens/Bookings/bookingsMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: BookingsMobile(),
      desktop: BookingsDashboard(),
    );
  }
}
