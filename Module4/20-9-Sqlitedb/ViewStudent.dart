import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'db.dart';

class ViewStudent extends StatefulWidget
{
  @override
  ViewState createState() => ViewState();

}

class ViewState extends State<ViewStudent>
{

  List<Map> slist = [];
  MyDb mydb = new MyDb();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mydb.open();
    getdata();
  }


  @override
  Widget build(BuildContext context)
  {

    return Scaffold(

        appBar: AppBar(title: Text("View Details"),),
        body: SingleChildScrollView(

            child: Container(

                child: slist.length == 0?Text("No any students to show."):
                  Column(

                      children: slist.map((stuone)
                      {
                          return Card
                          (
                                child: ListTile(

                              leading: Icon(Icons.people),
                              title: Text(stuone["name"]),
                              subtitle: Text("Roll No:" + stuone["roll_no"].toString() + ", Add: " + stuone["address"]),

                          ),




                          );
                       }).toList()



                )






            )





        ),


    );




  }

  void getdata()
  {

    Future.delayed(Duration(milliseconds: 500),()async
    {

      slist = await mydb.db.rawQuery('SELECT * FROM students');
      setState(()
      {

      });
    });


  }


}

