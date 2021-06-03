import 'package:admin_tow_tech/Provider/dataProvider.dart';
import 'package:admin_tow_tech/Screens/Dashboard/dashboard.dart';
import 'package:admin_tow_tech/Screens/Navbar/navbar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainLayout extends StatefulWidget {
  @override
  _MainLayoutState createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  @override
  Widget build(BuildContext context) {

    final dataProvider = Provider.of<DataProvider>(context);

    return Scaffold(
      body: Container(
        color: Color(0xff212333),
        child: Row(
          children: [
            Column(
              children: [
                Navbar(),
              ],
            ),
            Column(
              children: [
                dataProvider.checkNavigate(),
                // Dashboard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
