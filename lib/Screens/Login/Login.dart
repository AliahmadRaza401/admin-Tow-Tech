import 'package:admin_tow_tech/Screens/Login/loginMobile.dart';
import 'package:admin_tow_tech/Screens/Login/loginWeb.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: LoginMobile(),
      desktop: LoginWeb() ,
    );
  }
}
