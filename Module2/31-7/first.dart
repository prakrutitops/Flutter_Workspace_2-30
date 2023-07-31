import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyFirstClass extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

      return MaterialApp(home: A1(),);

  }

}

class A1 extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

          appBar: AppBar(title: Text("xyz"),),
          body: Center(

              child: Column(

                  children: [


                      Image.network("",width: 50,height: 50,),
                      SizedBox(width: 50,height: 50,)
                      ElevatedButton(onPressed: (){}, child: Text("")),
                      Image.asset("assets/a.jpg",width: 50,height: 50)




                  ],



              ),

          ),

    );
  }

}