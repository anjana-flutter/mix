// import 'package:basics/check.dart';
// import 'package:flutter/material.dart';
// import 'drwer/widget/navigation_drawer_widget.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
// //home: Expanded_test(),
//     home: NavigationDrawerWidget(),
//
//     );
//   }
// }
// class Expanded_test extends StatefulWidget {
//   const Expanded_test({Key? key}) : super(key: key);
//
//   @override
//   State<Expanded_test> createState() => _Expanded_testState();
// }
//
// class _Expanded_testState extends State<Expanded_test> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             height: 130,
//             width: 200,
//             alignment: Alignment.center,
//             padding: EdgeInsets.all(50),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               color: Colors.grey
//             ),
//             child: Text('first'),
//           ),
//           SizedBox(height: 16,),
//           Container(
//             height: 130,
//             width: 200,
//             alignment: Alignment.center,
//             padding: EdgeInsets.all(20),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.grey.shade600
//             ),
//             child: Text('second'),
//           ), Container(
//             height: 130,
//             width: 200,
//             alignment: Alignment.center,
//             padding: EdgeInsets.all(20),
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.grey.withOpacity(0.5)
//             ),
//             child: Text('third'),
//           ),
//         ],
//       ),
//     );
//   }
// }
// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/material.dart';
// //
// // void main() => runApp(MyApp());
// //
// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Baby Names',
// //       home: MyHomePage(),
// //     );
// //   }
// // }
// //
// // class MyHomePage extends StatefulWidget {
// //   @override
// //   _MyHomePageState createState() {
// //     return _MyHomePageState();
// //   }
// // }
// //
// // class _MyHomePageState extends State<MyHomePage> {
// //   final TextEditingController _textController = new TextEditingController();
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(title: Text('Baby Name Votes')),
// //       body: Column(
// //         children: <Widget>[
// //           new Flexible(
// //             child: _buildBody(context),
// //           ),
// //           _buildTextComposer()//Card(child: ListTile(title: Text('One-line ListTile')))
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Widget _buildTextComposer() {
// //     return new IconTheme(                                            //new
// //       data: new IconThemeData(color: Theme.of(context).accentColor), //new
// //       child: new Container(                                     //modified
// //         margin: const EdgeInsets.symmetric(horizontal: 8.0),
// //         child: new Row(
// //           children: <Widget>[
// //             new Flexible(
// //               child: new TextField(
// //                 controller: _textController,
// //                 onSubmitted: _handleSubmitted,
// //                 decoration: new InputDecoration.collapsed(
// //                     hintText: "Send a message"),
// //               ),
// //             ),
// //             new Container(
// //               margin: new EdgeInsets.symmetric(horizontal: 4.0),
// //               child: new IconButton(
// //                   icon: new Icon(Icons.send),
// //                   onPressed: () => _handleSubmitted(_textController.text)),
// //             ),
// //           ],
// //         ),
// //       ),                                                             //new
// //     );
// //   }
// //
// //   Future<void> _handleSubmitted(String text) async {
// //     try {
// //       await FirebaseFirestore.instance.collection('users').document().setData({'name':text , 'votes':0});
// //     }catch(e){
// //       print(e.message);
// //       showDialog(
// //           context: context,
// //           builder: (context) {
// //             return AlertDialog(
// //               content: Text(e.message),
// //             );
// //           }
// //       );
// //     }
// //   }
// //
// //   Widget _buildBody(BuildContext context) {
// //     return StreamBuilder<QuerySnapshot>(
// //       stream: FirebaseFirestore.instance.collection('users').snapshots(),
// //       builder: (context, snapshot) {
// //         if (!snapshot.hasData) return LinearProgressIndicator();
// //
// //         return _buildList(context, snapshot.data.documents);
// //       },
// //     );
// //   }
// //
// //   Widget _buildList(BuildContext context, List<DocumentSnapshot> snapshot) {
// //     return ListView(
// //         padding: const EdgeInsets.only(top: 20.0),
// //         children: snapshot.map((data) => _buildListItem(context, data)).toList()
// //     );
// //   }
// //
// //   Widget _buildListItem(BuildContext context, DocumentSnapshot data) {
// //     final record = Record.fromSnapshot(data);
// //
// //     return Dismissible(
// //       key: ValueKey(record.name),
// //       onDismissed: (direction){
// //         _deleteData(record.reference);
// //       },
// //       child: Padding(
// //         key: ValueKey(record.name),
// //         padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
// //         child: Container(
// //           decoration: BoxDecoration(
// //             border: Border.all(color: Colors.grey),
// //             borderRadius: BorderRadius.circular(5.0),
// //           ),
// //           child: ListTile(
// //             title: Text(record.name),
// //             trailing: Container(child: Text(record.votes.toString())),
// //             onTap: () => record.reference.updateData({'votes': FieldValue.increment(1)}),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //
// //   Future<void> _deleteData(DocumentReference reference) async {
// //     try {
// //       await FirebaseFirestore.instance.runTransaction((Transaction myTransaction) async {
// //         await myTransaction.delete(reference);
// //       });
// //     }catch(e){
// //       print(e.message);
// //       showDialog(
// //           context: context,
// //           builder: (context) {
// //             return AlertDialog(
// //               content: Text(e.message),
// //             );
// //           }
// //       );
// //     }
// //   }
// // }
// //
// // class Record {
// //   final String name;
// //   final int votes;
// //   final DocumentReference reference;
// //
// //   Record.fromMap(Map<String, dynamic> map, {required this.reference})
// //       : assert(map['name'] != null),
// //         assert(map['votes'] != null),
// //         name = map['name'],
// //         votes = map['votes'];
// //
// //   Record.fromSnapshot(DocumentSnapshot snapshot)
// //       : this.fromMap(snapshot.data as Map<String, dynamic>, reference: snapshot.reference);
// //
// //   @override
// //   String toString() => "Record<$name:$votes>";
// // }

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'drwer/provider/navigation_provider.dart';
import 'drwer/widget/navigation_drawer_widget.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Navigation Drawer';

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
    create: (context) => NavigationProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: MainPage(),
    ),
  );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawerWidget(),
    appBar: AppBar(
      backgroundColor: Colors.red,
      title: Text(MyApp.title),
      centerTitle: true,
    ),
  );
}