import 'package:flutter/material.dart';

class CircleBar extends StatelessWidget {
  final bool isActive;
  CircleBar(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      height: isActive ? 5.95 : 5.95,
      width: isActive ? 5.95 : 5.95,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xff503C3B)),
          color: isActive ? Colors.black : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(50))),
    );
  }
}
