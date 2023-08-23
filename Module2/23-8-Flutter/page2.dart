//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageViewBuild extends StatefulWidget
{
  @override
  BuildState createState() => BuildState();


}

class BuildState extends State<PageViewBuild>
{
  @override
  Widget build(BuildContext context)
  {

      return Scaffold(

        appBar: AppBar(title: Text("Page Build"),),
        body: PageView.builder(itemBuilder: (context, index)
        {
          return Container
            (
              color: index % 2 == 0 ? Colors.green : Colors.blue[700],
            );
        }),

      );

  }

}