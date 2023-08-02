import 'package:flutter/material.dart';

class AnimationExample extends StatefulWidget {
  const AnimationExample({
    super.key,
  });

  @override
  State<AnimationExample> createState() => _AnimationExampleState();
}

class _AnimationExampleState extends State<AnimationExample>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> colorAnimation;
  late Animation<double?> sizeAnimation;

  @override
  void initState() {
    super.initState();
    controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    colorAnimation =
        ColorTween(begin: Colors.blue, end: Colors.yellow).animate(controller);
    sizeAnimation = Tween<double>(begin: 100, end: 200).animate(controller);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
