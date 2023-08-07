import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/secondpage.dart';

class FirstPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(appBar: AppBar(title: Text("Navigation or Routing"),),

        body: Center(

          child: Column(


              children: [

                  ElevatedButton(onPressed: ()
                  {

                      Navigator.push(context, MaterialPageRoute(builder: (context) => SecondPage() ));


                  }, child: Text("Click Me"))

              ],


          ),

        ),


      );
  }

}