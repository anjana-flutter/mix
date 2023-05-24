import 'package:flutter/material.dart';
class Hero_animation extends StatefulWidget {
  const Hero_animation({Key? key}) : super(key: key);

  @override
  State<Hero_animation> createState() => _Hero_animationState();
}

class _Hero_animationState extends State<Hero_animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRRect(
        borderRadius: BorderRadius.circular(20),
      ),
    );
  }
}
