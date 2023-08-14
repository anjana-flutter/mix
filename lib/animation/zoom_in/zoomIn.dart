import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );

    _animationController.forward();

    Future.delayed(Duration(seconds: 12), () {
      Navigator.pushReplacement(
        context,
        SlideUpRoute(widget: Screen2()), // Navigate to Screen2 with the slide-up transition after the splash screen
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _animationController,
          builder: (_, Widget ) {
            return ScaleTransition(
              scale: _animationController,
              child: FlutterLogo(size: 100), // Replace this with your splash screen image/widget
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Screen 2')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context); // Navigate back to the splash screen with the slide-up transition
          },
          child: Text('Go back'),
        ),
      ),
    );
  }
}
class SlideUpRoute extends PageRouteBuilder {
  final Widget widget;

  SlideUpRoute({required this.widget})
      : super(
    pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
      return widget;
    },
    transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
      const begin = Offset(0.0, 1.0); // Starting position of the transition (center of the screen)
      const end = Offset(0.0, 0.0); // Ending position of the transition (top of the screen)
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
