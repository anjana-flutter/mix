import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
home: Expanded_test(),
    );
  }
}
class Expanded_test extends StatefulWidget {
  const Expanded_test({Key? key}) : super(key: key);

  @override
  State<Expanded_test> createState() => _Expanded_testState();
}

class _Expanded_testState extends State<Expanded_test> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 130,
            width: 200,
            alignment: Alignment.center,
            padding: EdgeInsets.all(50),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.grey
            ),
            child: Text('first'),
          ),
          SizedBox(height: 16,),
          Container(
            height: 130,
            width: 200,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.shade600
            ),
            child: Text('second'),
          ), Container(
            height: 130,
            width: 200,
            alignment: Alignment.center,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey.withOpacity(0.5)
            ),
            child: Text('third'),
          ),
        ],
      ),
    );
  }
}
