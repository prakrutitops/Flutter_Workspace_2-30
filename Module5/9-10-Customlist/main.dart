import 'package:flutter/material.dart';

import 'model.dart';

void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget {


  //json code



  // Create a list of ListItem objects
  final List<ListItem> items = [
    ListItem(
      imageUrl: 'images/a.jpg',
      title: 'Nikhil',
      subtitle1: 'nikhil@gmail.com',
      subtitle2: '999999',

    ),
    ListItem(
      imageUrl: 'images/b.jpg',
      title: 'Parthiv',
      subtitle1: 'parthiv@gmail.com',
      subtitle2: '123456789',

    ),
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom ListView Example'),
        ),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (BuildContext context, int index) {
            //design
            return ListTile(
              leading: Image.asset(items[index].imageUrl),
              title: Text(items[index].title),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(items[index].subtitle1,),
                  Text(items[index].subtitle2),

                ],
              ),
              // You can add more customization here, like onTap handlers, icons, etc.
            );
          },
        ),
      ),
    );
  }
}
