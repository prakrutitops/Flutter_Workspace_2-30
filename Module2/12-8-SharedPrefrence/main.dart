//@dart=2.9
import 'package:cafeex/splashscreen.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

      return MaterialApp
          (
              home: SplashScreenPage(),

          );


  }

}
