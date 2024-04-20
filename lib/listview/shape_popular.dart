import 'package:flutter/material.dart';

class shape_popular extends StatelessWidget {
  final String child;
  const shape_popular({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Container(
        height: 500,
        width: 100,
        decoration: const BoxDecoration(
          shape: BoxShape.rectangle,
          color: Color.fromARGB(255, 0, 255, 170),
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
