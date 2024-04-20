import 'package:flutter/material.dart';

class shape_deals extends StatelessWidget {
  final String child;
  const shape_deals({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color.fromARGB(255, 109, 7, 41),
        ),
        child: Center(
          child: Text(
            child,
            style: const TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
