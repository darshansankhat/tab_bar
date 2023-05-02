import 'package:flutter/material.dart';

class Splash_screen extends StatefulWidget {
  const Splash_screen({Key? key}) : super(key: key);

  @override
  State<Splash_screen> createState() => _Splash_screenState();
}

class _Splash_screenState extends State<Splash_screen> {
  @override
  Widget build(BuildContext context) {

    Future.delayed(Duration(seconds: 5),() {
      Navigator.pushReplacementNamed(context, "/");
    },);

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black87,
        body: Column(
          children: [
            SizedBox(height: 300,),
            Image.asset("assets/image/l.png",height: 150,width: 150,),
            Spacer(),
            Text("from",style: TextStyle(color: Colors.white38,fontSize: 18),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.all_inclusive,color: Colors.white,size: 25,),
                SizedBox(width: 10),
                Text("Meta",style: TextStyle(fontSize: 25,color: Colors.white),),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
