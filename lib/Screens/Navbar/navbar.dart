// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navbarDesktop.dart';
import 'navbarMobile.dart';

class Navbar extends StatefulWidget {
  @override
  _NavbarState createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: NavbarDesktop(),
      mobile: NavbarMobile(),
    );
  }
}
