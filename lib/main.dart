import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tab_bar/Tab_bar_screens/Provider_screen/Chat_provider.dart';
import 'package:tab_bar/Tab_bar_screens/Provider_screen/Status_provider.dart';
import 'package:tab_bar/Tab_bar_screens/View_screen/Home_scrren.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Chat_provider(),),
        ChangeNotifierProvider(create: (context) => Status_provider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          "/":(context) => Home_screen(),
        },
      ),
    ),
  );
}