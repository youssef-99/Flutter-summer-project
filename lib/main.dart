import 'package:flutter/material.dart';
import 'package:flutter_summer_project/pages/bottom_nav_bar/bottomNavBar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Summer project',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.teal,
      ),
      home: BottomNavBar(),
    );
  }
}
