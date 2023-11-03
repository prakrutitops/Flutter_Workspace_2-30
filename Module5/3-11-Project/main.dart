//@dart=2.9
import 'package:flutter/material.dart';
import 'package:project8/screens/user/splash_screen/SplashScreen.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp
      (
      debugShowCheckedModeBanner: false,
      title: 'E wishes',
      home: SplashScreen(),
    );
  }
}


