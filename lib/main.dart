import 'package:ebookui/constants/constants.dart';
import 'package:ebookui/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Book Store',
      theme: ThemeData(
        primaryColor: kPrimary,
      ),
      home: SplashScreen(),
    );
  }
}


