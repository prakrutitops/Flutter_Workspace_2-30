import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:untitled/firstpage.dart';

class MyAnimation extends StatefulWidget
{
  @override
  AnimationState createState()  => AnimationState();


}
class AnimationState extends State<MyAnimation>
{

 @override
  void initState()
  {
    // TODO: implement initState
    Timer(
        Duration(seconds: 8),
            () =>
                Navigator.push(context, MaterialPageRoute(builder: (context) => FirstPage()))
        );

  }

  @override
  Widget build(BuildContext context)
  {


      return Scaffold(
          
        body: Center(
            
          child: Column(
            
            children: [


              Lottie.network("https://vyasprakruti.000webhostapp.com/E-Greetings%20Project/animation.json",
                  height: 200.0,
                  repeat: true,
                  reverse: true,
                  animate: true)

            ],


            
          ),
          
        ),
        
      );
      

  }

}