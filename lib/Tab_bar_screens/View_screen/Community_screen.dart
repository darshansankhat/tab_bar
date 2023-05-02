import 'package:flutter/material.dart';

class Community_screen extends StatefulWidget {
  const Community_screen({Key? key}) : super(key: key);

  @override
  State<Community_screen> createState() => _Community_screenState();
}

class _Community_screenState extends State<Community_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.groups,size: 100,color: Colors.green.shade400,),
            SizedBox(height: 20),
            Text("Welcome to Community",style: TextStyle(fontSize: 25,color: Colors.white38),),
          ],
        ),
      )
    );
  }
}
