import 'dart:math';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tab_bar/Tab_bar_screens/Provider_screen/Calls_provider.dart';

class Call_screen extends StatefulWidget {
  const Call_screen({Key? key}) : super(key: key);

  @override
  State<Call_screen> createState() => _Call_screenState();
}

class _Call_screenState extends State<Call_screen> {

  Calls_provider? providerF;
  Calls_provider? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<Calls_provider>(context,listen: false);
    providerT=Provider.of<Calls_provider>(context,listen: false);

    return Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //my status
          Container(
            height: 60,
            width: double.infinity,
            color: Colors.black87,
            child: ListTile(
              leading: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.teal.shade400,
                ),
                child: Transform.rotate(angle: pi / -4,child: Icon(Icons.link,size: 30,color: Colors.white,))
              ),
              title: Text("Create call link",style: TextStyle(fontSize: 18,color: Colors.white),),
              subtitle: Text("Share a link for your WhatsApp call",style: TextStyle(color: Colors.white38),),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 25),
            child: Text("Recent updates",style: TextStyle(color: Colors.white38),),
          ),
          SizedBox(height: 10),
          //list
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return Contact(index);
              },
              itemCount: providerF!.CallsNameList.length,
            ),
          ),
        ],
      ),
    );
  }
  Widget Contact(int index) {
    return Container(
      height: 80,
      width: double.infinity,
      color: Colors.black87,
      alignment: Alignment.center,
      child: ListTile(
        leading: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("${providerF!.CallsNameList[index].img}")),
        ),
        title: Text(
          "${providerF!.CallsNameList[index].name}",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        subtitle: Row(
          children: [
            Transform.rotate(angle: pi / 1.5,child: Icon(Icons.arrow_forward,color: Colors.green,size: 25,)),
            Text("${providerF!.CallsNameList[index].tag}",style: TextStyle(color: Colors.white38),),
          ],
        ),
      ),
    );
  }
}
