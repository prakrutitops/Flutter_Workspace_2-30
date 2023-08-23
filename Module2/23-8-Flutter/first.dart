//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pageviewex/page1.dart';
import 'package:pageviewex/page2.dart';
import 'package:pageviewex/page3.dart';
import 'package:pageviewex/page4.dart';

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

        appBar: AppBar
          (
            title: Text("PageView - Flutter"),
            centerTitle: true,
            elevation: 0,
          ),
        body:Center(

            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                          SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: MaterialButton(
                          onPressed: ()
                          {
                          Navigator.push(context,MaterialPageRoute(builder: (context) => PageViewTest1()));
                          },
                          child: Text('PageView Example',style: TextStyle(color: Colors.white),),
                            color: Colors.amber[800],
                          ),
                          ),

                          SizedBox(
                          width: MediaQuery.of(context).size.width,
                            child: MaterialButton(
                            onPressed: ()
                            {
                            Navigator.push(context,MaterialPageRoute(builder: (context) => PageViewBuild()));
                            },
                          child: Text('PageView Builder Example',style: TextStyle(color: Colors.white),),
                          color: Colors.amber[800],
                          ),
                          ),

                              SizedBox(
                              width: MediaQuery.of(context).size.width,
                                child: MaterialButton(
                                onPressed: ()
                                {
                                Navigator.push(context,MaterialPageRoute(builder: (context) => PageViewCustom()));
                                },
                              child: Text('PageView Custom Example',style: TextStyle(color: Colors.white),),
                              color: Colors.amber[800],
                              ),
                              ),

                              SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: MaterialButton(
                              onPressed: ()
                              {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => CustomizedPageView()));
                              },
                              child: Text('Customized PageView Example',style: TextStyle(color: Colors.white),),
                              color: Colors.amber[800],
                              ),
                              ),




               ],

            )

        ),


      ));

  }

}