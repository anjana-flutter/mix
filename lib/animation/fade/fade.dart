import 'package:flutter/material.dart';
// Screen1
class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 1')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              FadeRoute(widget: Screen2()), // Navigate to Screen2 with a fade transition
            );
          },
          child: Text('Go to Screen 2'),
        ),
      ),
    );
  }
}

// Screen2
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to Screen1 with a fade transition
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
class FadeRoute extends PageRouteBuilder {
  final Widget widget;

  FadeRoute({required this.widget})
      : super(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
      return FadeTransition(
        opacity: animation,
        child: child,
      );
    },
  );
}
