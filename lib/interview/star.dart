// // import 'dart:io';
// //
// // void main(){
// //   for(int i=1;i<=6;i++){
// //     for(int j=6;j>=i;j--){
// //       stdout.write("!");
// //     }
// //     stdout.writeln();
// //   }
// // }
// // // void main(){
// // //
// // // for(int i=1;i<=10;){
// // //   print(i++);
// // // }}
// // //even number 1 to 100
// // // void main(){
// // //   int i=0;
// // //   do{
// // // print(i);
// // //    i +=2;
// // //     }
// // //   while(i<=100);
// // // }
// //  //
// //  //    // Initialize the starting number
// //  //    int num = 0;
// //  //
// //  //    // Use a do-while loop to print even numbers from 0 to 10
// //  //    do {
// //  //      // Print the even number
// //  //      print(num);
// //  //
// //  //      // Increment the number by 2 to get the next even number
// //  //      num += 2;
// //  //    } while (num <= 100); // Continue the loop until num is greater than 10
// //  //
// //  // }
// import 'dart:io';
// void main(){
//   for(int i=0;i<=3;i++){
//     for(int j=3;j>=i;j-- ){
//       stdout.write("%");
//     }
//     stdout.writeln();
//   }
// }
import 'dart:io';

void main(){
  for(int i=1;i<=6;i++){
    for(int j=6;j>=i;j--){
      stdout.write("!");
    }
    stdout.writeln();
  }
}
//import 'package:audioplayers/audioplayers.dart';
//import 'dart:io';

//import 'package:flutter/material.dart';

// class MyHomePage1 extends StatefulWidget {
//   MyHomePage1({Key? key}) : super(key: key);
//
//   @override
//   _MyHomePage1State createState() => _MyHomePage1State();
// }
//
// class _MyHomePage1State extends State<MyHomePage1> {
//   AudioPlayer player1 = AudioPlayer();
//   AudioPlayer player2 = AudioPlayer();
//
//   @override
//   void dispose() {
//     player1.dispose();
//     player2.dispose();
//     super.dispose();
//   }
//
//   void play() async {
//     await player1.play('assets/Dandelions_.mp3');
//     await player2.play('assets/Dandelions_.mp3');
//   }
//
//   void pause() async {
//     await player1.pause();
//     await player2.pause();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Multiple Audio Players'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             ElevatedButton(
//               onPressed: play,
//               child: Text('Play'),
//             ),
//             ElevatedButton(
//               onPressed: pause,
//               child: Text('Pause'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
// class audio extends StatefulWidget {
//   const audio({Key? key}) : super(key: key);
//
//   @override
//   State<audio> createState() => _audioState();
// }
//
// class _audioState extends State<audio> {
//   final player = AudioPlayer();
//
//   // player.setSource(AssetSource('Dandelions_.mp3'));
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Row(
//       children: [
//         Center(
//           child: ElevatedButton(
//             child: Text("play"),
//             onPressed: () {
//               // final player=AudioCache();
//             //  player.play(AssetSource('Dandelions_.mp3'));
//             },
//           ),
//         ),
//         SizedBox(width: 10),
//         Center(
//           child: ElevatedButton(
//             child: Text("stop"),
//             onPressed: () {
//               // final player=AudioCache();
//               player.stop();
//             },
//           ),
//         ),
//         SizedBox(width: 10),
//         Center(
//           child: ElevatedButton(
//             child: Text("pause"),
//             onPressed: () {
//               // final player=AudioCache();
//               player.pause();
//             },
//           ),
//         ),
//         SizedBox(width: 10),
//         Center(
//           child: ElevatedButton(
//             child: Text("resume"),
//             onPressed: () {
//               // final player=AudioCache();
//               player.resume();
//             },
//           ),
//         ),
//       ],
//     ));
//   }
// }
//
// class AudioPlayer {
//   void resume() {}
//
//   void pause() {}
//
//   void stop() {}
// }
