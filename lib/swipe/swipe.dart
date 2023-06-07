import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with SingleTickerProviderStateMixin {
  double _containerHeight = 100.0;
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );

    _animation = Tween<double>(begin: 100.0, end: 300.0).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _handleSwipeUp() {
    setState(() {
      if (_containerHeight == 100.0) {
        _animationController.forward();
        _containerHeight = 300.0;
      } else {
        _animationController.reverse();
        _containerHeight = 100.0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GestureDetector(
          onVerticalDragEnd: (_) => _handleSwipeUp(),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            height: _containerHeight,
            color: Colors.blue,
            child: Center(
              child: Text(
                'Swipe Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            ),
          ),
        ),
      ),
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