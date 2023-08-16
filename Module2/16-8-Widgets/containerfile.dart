import 'package:flutter/material.dart';



class MyApp2 extends StatefulWidget
{
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<MyApp2>
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

      appBar: AppBar(title: Text("Widgets"),),
      body: Container
        (
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
               border: Border.all(color: Colors.black, width: 3),
               ),
            padding: EdgeInsets.all(30),
            margin: EdgeInsets.all(20),
            child: Text("Hello! i am inside a container!",
            style: TextStyle(fontSize: 20)),
          alignment: Alignment.center,

        ),

    );


  }

}