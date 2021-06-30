import 'package:admin_tow_tech/Screens/Bookings/bookings.dart';
import 'package:admin_tow_tech/Screens/Dashboard/dashboard.dart';
import 'package:admin_tow_tech/Screens/Technicians/technicain.dart';
import 'package:admin_tow_tech/Screens/Truck%20Drivers/driver.dart';
import 'package:admin_tow_tech/Screens/Users/users.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  String navigatorname;

  void navigate(String name) {
    switch (name) {
      case "Dashboard":
        {
          navigatorname = name;
        }
        break;

      case "Bookings":
        {
          navigatorname = name;
        }
        break;

      case "Truck Drivers":
        {
          navigatorname = name;
        }
        break;

      case "Technician":
        {
          navigatorname = name;
        }
        break;

      case "Users":
        {
          navigatorname = name;
        }
        break;

      default:
        {
          navigatorname = "Dashboard";
        }
        break;
    }

    notifyListeners();
  }

  checkNavigate() {
    switch (navigatorname) {
      case "Dashboard":
        {
          return Dashboard();
        }
        break;

      case "Bookings":
        {
          return Bookings();
        }
        break;

      case "Truck Drivers":
        {
          return Driver();
        }
        break;

      case "Technician":
        {
          return Technician();
        }
        break;

      case "Users":
        {
          return Users();
        }
        break;

      default:
        {
          return Dashboard();
        }
        break;
    }

    notifyListeners();
  }
}
