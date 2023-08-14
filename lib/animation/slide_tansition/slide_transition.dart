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
              SlideRightRoute(widget: Screen2()), // Navigate to Screen2 with a slide transition
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
            Navigator.pop(context); // Navigate back to Screen1 with a slide transition
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
class SlideRightRoute extends PageRouteBuilder {
  final Widget widget;

  SlideRightRoute({required this.widget})
      : super(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
      const begin = Offset(1.0, 0.0); // Starting position of the transition (from right)
      const end = Offset.zero; // Ending position of the transition (to the center of the screen)
      const curve = Curves.easeInOut; // Easing curve for the transition

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
      var offsetAnimation = animation.drive(tween);

      return SlideTransition(
        position: offsetAnimation,
        child: child,
      );
    },
  );
}
