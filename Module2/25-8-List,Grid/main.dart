import 'package:flutter/material.dart';

import 'grid.dart';

void main()
{
  runApp(MaterialApp
    (
      home:Scaffold(body: MyApp2(),) ,
    )
  );
}

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {

      return ListView.builder( itemCount: 5,itemBuilder: (BuildContext context, int index)
      {

        return ListTile(

          leading: const Icon(Icons.list),
          trailing: const Text(
            "TOPS TECHNOLOGIES",
            style: TextStyle(color: Colors.green, fontSize: 15),
          ),
            title: Text("List item $index"));



      }
      );

  }

}
