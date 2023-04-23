import 'package:flutter/material.dart';

class Home_screen extends StatefulWidget {
  const Home_screen({Key? key}) : super(key: key);

  @override
  State<Home_screen> createState() => _Home_screenState();
}

class _Home_screenState extends State<Home_screen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blueGrey.shade900,
            title: Text(
              "WhatsApp",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white60,
                  fontWeight: FontWeight.bold),
            ),
            actions: [
              Icon(
                Icons.camera_alt_outlined,
                size: 25,
                color: Colors.white60,
              ),
              SizedBox(
                width: 15,
              ),
              Icon(
                Icons.search_rounded,
                size: 25,
                color: Colors.white60,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.more_vert,
                size: 25,
                color: Colors.white60,
              ),
              SizedBox(
                width: 10,
              ),
            ],
            bottom: TabBar(
              indicatorColor: Color(0xff075E55),
              tabs: [
                Icon(Icons.groups,size: 30,color: Colors.white60,),
                Text("Chats",style: TextStyle(fontSize: 18,color: Colors.white60),),
                Text("Status",style: TextStyle(fontSize: 18,color: Colors.white60),),
                Text("calls",style: TextStyle(fontSize: 18,color: Colors.white60),),
              ],
            ),
          ),
          body: Container(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {

            },
            backgroundColor: Color(0xff075E55),
            child: Icon(Icons.chat,color: Colors.white,),
          ),
        ),
      ),
    );
  }
}
