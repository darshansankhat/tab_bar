import 'package:flutter/cupertino.dart';

import '../Model_screen/Chat_model.dart';

class Chat_provider extends ChangeNotifier
{
  List<Chat_data> NameList=[
    Chat_data(img: "assets/image/chate_image/1.png",name: "Darshan Kumbhani 😎😎",tag: "I'm Busy"),
    Chat_data(img: "assets/image/chate_image/2.png",name: "Kaushik R n W 😀",tag: "AHIR........"),
    Chat_data(img: "assets/image/chate_image/3.png",name: "😎 Vivek tailor 😎",tag: "ENGINYER😎😎"),
    Chat_data(img: "assets/image/chate_image/4.png",name: "Prince Raval",tag: "Flutter developer"),
    Chat_data(img: "assets/image/chate_image/5.png",name: "Bhargava",tag: "B B B B"),
    Chat_data(img: "assets/image/chate_image/6.png",name: "Krunal Ghoihil",tag: "hii....."),
    Chat_data(img: "assets/image/chate_image/7.png",name: "Dixit Friend",tag: "App Developer"),
    Chat_data(img: "assets/image/chate_image/8.png",name: "Yas 🤖",tag: "Chat GPT 😍"),
    Chat_data(img: "assets/image/chate_image/9.png",name: "Bhavin 💥",tag: "🎶🎶🎶"),
    Chat_data(img: "assets/image/chate_image/10.png",name: "Nikunj ",tag: "Work Harder"),
    Chat_data(img: "assets/image/chate_image/11.png",name: "Dharmesh",tag: "B F F"),
  ];
}