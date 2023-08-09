//@dart=2.9
import 'dart:async';

import 'package:cafeex/menufile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreenPage extends StatefulWidget
{

  @override
  SplashState createState() => SplashState();


}
class SplashState extends State<SplashScreenPage>
{

  @override
  void initState()
  {
    Timer( Duration(seconds: 5), () => 
    
        Navigator.push(context,MaterialPageRoute(builder: (context) => MenuEx()))
    
    );
  }

  @override
  Widget build(BuildContext context)
  {

    return Scaffold
      (

      body: Center(

        child: Column(

          children: [

            SizedBox(width: 300,height: 300),

            Lottie.asset
              (
                "assets/animation.json",
                height: 200.0,
                repeat: true,
                reverse: true,
                animate: true
            )

          ],

        ),

      ),

    );
  }

}