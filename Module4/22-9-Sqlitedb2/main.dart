//@dart=2.9
import 'package:flutter/material.dart';
import 'homepage.dart';

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

          home: Scaffold(body:HomePage()),
        );
  }

}

