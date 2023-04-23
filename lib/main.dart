import 'package:flutter/material.dart';
import 'package:tab_bar/Tab_bar_screens/View_screen/Home_scrren.dart';

void main()
{
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => Home_screen(),
      },
    ),
  );
}