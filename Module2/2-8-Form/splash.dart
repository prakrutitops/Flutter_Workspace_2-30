//@dart=2.9
import 'package:example3/first.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class SplashScreenPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return SplashScreen(

        seconds: 10,
        navigateAfterSeconds: new FirstPage(),
        image: Image.asset("assets/a.jpg"),
        photoSize: 150.0,
        backgroundColor: Colors.black,
        loaderColor: Colors.red


    );

  }
}