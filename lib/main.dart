import 'package:admin_tow_tech/Provider/dataProvider.dart';
import 'package:admin_tow_tech/Screens/Dashboard/dashboard.dart';
import 'package:admin_tow_tech/Screens/Login/Login.dart';
import 'package:admin_tow_tech/Screens/mainLayout.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider.value(
          value: DataProvider(),
        child: MainLayout(),

      ),
    );
  }
}

