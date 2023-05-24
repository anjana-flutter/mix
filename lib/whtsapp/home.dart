// import 'package:basics/whtsapp/screens/calls.dart';
// import 'package:flutter/material.dart';
//
// class Home_page extends StatefulWidget {
//   const Home_page({Key? key}) : super(key: key);
//
//   @override
//   State<Home_page> createState() => _Home_pageState();
// }
//
// class _Home_pageState extends State<Home_page> {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length:4,
//         child:
//         Scaffold(
//           appBar: AppBar(
//               title: Text(
//                   "WhatsApp", style: TextStyle(fontSize: 20, letterSpacing: 5)),
//               backgroundColor: Colors.black45,
//               actions: [
//                 Icon(Icons.camera_alt_outlined),
//                 SizedBox(width: 15,),
//                 Icon(Icons.search),
//                 SizedBox(width: 15,),
//                 Icon(Icons.more_vert),
//                 SizedBox(width: 15,)
//               ],
//               elevation: 0),
//           backgroundColor: Colors.black54,
//           body: SafeArea(
//             child: ListView(
//               children: [TabBar(
//                   tabs: [
//              Tab(icon :Icon(Icons.cabin_sharp),),
//                     Text("Chat"),Text("Status"),
//                     Text("Calls")
//               ]),
//              TabBarView(children: [
//                Expanded(child: Calls())
//              ])
//               ],
//             ),
//           ),)
//     );
//   }
// }
import 'package:basics/whtsapp/screens/calls.dart';
import 'package:flutter/material.dart';



// class to build the app
class TabBarDemo extends StatefulWidget {
  const TabBarDemo({Key? key}) : super(key: key);

  @override
  State<TabBarDemo> createState() => _TabBarDemoState();
}

class _TabBarDemoState extends State<TabBarDemo> {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
              actions: [
                IconButton(onPressed: (){},icon: Icon(Icons.camera_alt_outlined)),
                SizedBox(width: 15,),
                Icon(Icons.search),
                SizedBox(width: 15,),
                Icon(Icons.more_vert),
                SizedBox(width: 15,)
              ],
              elevation: 0,
            bottom:  TabBar(
              tabs: [
                Tab(icon: Icon(Icons.person)),
                Tab(child:Text("Chats")),
                Tab(child:Text("Status")),
                Tab(child:Text("CallsS")),
              ],
              indicator:BoxDecoration(
    border: Border(bottom: BorderSide(color: Colors.white))              ),
            ), // TabBar
            title: const Text('WhatsApp'),
            backgroundColor: Colors.black54,
          ), // AppBar
          body: const TabBarView(

            children: [

              Icon(Icons.music_video),
              Calls(),
              Icon(Icons.camera_alt),
              Icon(Icons.grade),
            ],

          ), // TabBarView
        ), // Scaffold
      ), // DefaultTabController
    ); // MaterialApp
  }
}
List<Map> names = [
  {"name" : 'sneha',"id" : 1},
  {"name" : 'sneha',"id" : 2},
  {"name" : 'sneha' ,"id" : 3},
  {"name" : 'sneha' ,"id" : 4},
  {"name" : 'sneha' ,"id" : 5},
  {"name" : 'sneha' ,"id" : 6},
  {"name" : 'sneha' ,"id" : 7},
  {"name" : 'sneha' ,"id" : 8},
  {"name" : 'sneha' ,"id" : 9},
  {"name" : 'sneha' ,"id" : 10},
  ];
