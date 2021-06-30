import 'package:admin_tow_tech/Screens/Users/usersDesktop.dart';
import 'package:admin_tow_tech/Screens/Users/usersMobile.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';


class Users extends StatefulWidget {
  @override
  _UsersState createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: UsersMobile(),
      desktop: UsersDesktop(),
    );
  }
}
