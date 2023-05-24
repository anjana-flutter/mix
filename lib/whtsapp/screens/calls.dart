import 'package:basics/whtsapp/home.dart';
import 'package:basics/whtsapp/home.dart';
import 'package:basics/whtsapp/screens/chatting.dart';
import 'package:flutter/material.dart';

import '../home.dart';
import '../home.dart';
import '../home.dart';
import '../home.dart';
class Calls extends StatefulWidget {
  const Calls({Key? key}) : super(key: key);

  @override
  State<Calls> createState() => _CallsState();
}

class _CallsState extends State<Calls> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.black54,
      body: ListView.builder(itemBuilder: (context, index) {
        return GestureDetector(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => Chattin()));
          },
          child: Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.width/10,
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                CircleAvatar(backgroundColor: Colors.black54,),
                SizedBox(width: 15,),
                Text(
                "names",
                ),              ],
            )
          ),
        );
      },
          itemCount: names.length,
      scrollDirection: Axis.vertical
      ),
    ));
  }
}
