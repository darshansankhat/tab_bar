import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tab_bar/Tab_bar_screens/Provider_screen/Chat_provider.dart';

class Chat_screen extends StatefulWidget {
  const Chat_screen({Key? key}) : super(key: key);

  @override
  State<Chat_screen> createState() => _Chat_screenState();
}

class _Chat_screenState extends State<Chat_screen> {
  Chat_provider? providerF;
  Chat_provider? providerT;

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<Chat_provider>(context, listen: false);
    providerF = Provider.of<Chat_provider>(context, listen: true);

    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Contact(index);
        },
        itemCount: providerF!.NameList.length,
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
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          ),
          alignment: Alignment.center,
          child: CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage("${providerF!.NameList[index].img}")),
        ),
        title: Text(
          "${providerF!.NameList[index].name}",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
        subtitle: Text("${providerF!.NameList[index].tag}",style: TextStyle(color: Colors.white38,fontSize: 15),),
        trailing: Text("Yesterday",style: TextStyle(color: Colors.white38),),
      ),
    );
  }
}
