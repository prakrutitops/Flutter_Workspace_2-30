//@dart=2.9
import 'package:flutter/material.dart';

import 'first.dart';

void main()
{
  runApp(MaterialApp(

    title: "Pageview example",
    theme: ThemeData(
      primarySwatch: Colors.blue,

    ),
    home: MyApp(),
    debugShowCheckedModeBanner: false,

  ));
}

