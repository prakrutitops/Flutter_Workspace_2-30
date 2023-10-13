import 'package:flutter/material.dart';

import 'addstudent.dart';

void main()
{
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatefulWidget
{
  @override
  MyAppState createState() => MyAppState();


}

class MyAppState extends State<MyApp>
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(

        appBar: AppBar(title: Text("Firebase Crud"),),
        body: Center(

          child: Column(

            children: [



            ],

          ),

        ),
        floatingActionButton: FloatingActionButton(
          onPressed: ()
          {
            print('Add');
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext) => AddStudent()));
          },
          child: Icon(Icons.add),),
      );
  }

}
