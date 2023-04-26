import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tab_bar/Tab_bar_screens/Provider_screen/Status_provider.dart';

class Status_screen extends StatefulWidget {
  const Status_screen({Key? key}) : super(key: key);

  @override
  State<Status_screen> createState() => _Status_screenState();
}

class _Status_screenState extends State<Status_screen> {

  Status_provider? providerF;
  Status_provider? providerT;

  @override
  Widget build(BuildContext context) {

    providerF=Provider.of<Status_provider>(context,listen: false);
    providerT=Provider.of<Status_provider>(context,listen: true);

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
              leading: Stack(
                alignment: Alignment(1,1),
                children: [Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/image/mydp.png"),
                  ),
                ),
                Container(
                  height: 25,
                  width: 25,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.teal,
                    border: Border.all(color: Colors.black,width: 2),
                  ),
                  alignment: Alignment.center,
                  child: Icon(Icons.add,color: Colors.white,size: 20,),
                ),
                ]
              ),
              title: Text("My status",style: TextStyle(fontSize: 18,color: Colors.white),),
              subtitle: Text("Tap to add status update",style: TextStyle(color: Colors.white38),),
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
              itemCount: providerF!.StatusNameList.length,
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
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.green,width: 3),
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("${providerF!.StatusNameList[index].img}")),
        ),
        title: Text(
          "${providerF!.StatusNameList[index].name}",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        subtitle: Text("Today, 12:03 AM",style: TextStyle(color: Colors.white38),),
      ),
    );
  }
}
