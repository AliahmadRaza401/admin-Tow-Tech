import 'package:admin_tow_tech/Provider/myprovider.dart';
import 'package:admin_tow_tech/Screens/Login/Login.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: MyProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Perfumino',
        home: Login(),
      ),
    );
  }
}
