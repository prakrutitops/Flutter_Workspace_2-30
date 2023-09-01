import 'package:flutter/material.dart';

import 'bottomnavigationex.dart';
import 'ex2.dart';
import 'navigationdrawer.dart';

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
            debugShowCheckedModeBanner: false,
            home: MyApp6(),
        );
  }

}

class MyApp2 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold
        (
            appBar: AppBar(title: Text("My App"),),
            body: Center
              (

                child: ElevatedButton(
                  onPressed: ()
                  {

                    print("Clicked");
                  },
                child: Text("Click Me"),),




              ),
        );
  }

}
