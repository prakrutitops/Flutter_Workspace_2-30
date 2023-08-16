import 'package:flutter/material.dart';

import 'containerfile.dart';

void main()
{
  runApp
    (
      MaterialApp
      (
        theme: ThemeData(primarySwatch: Colors.green),
        darkTheme: ThemeData(primarySwatch: Colors.grey),
        debugShowCheckedModeBanner: false,
        color: Colors.amberAccent,
        home: MyApp())
      );
}


class MyApp extends StatefulWidget
{
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

          appBar: AppBar(title: Text("Widgets"),),
          body: Center
            (

              child: Column(

                children: [

                    SizedBox(width:100,height:100),
                    Text("Welcome to tops"),
                    SizedBox(width:100,height:100),
                    Text("Rajkot"),

                ],

              )
            ),

        floatingActionButton: FloatingActionButton
          (
            child: Icon(Icons.add),
            onPressed: () {

                print("success");

            },


        )

      );


  }

}