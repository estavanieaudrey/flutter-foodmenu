import 'package:flutter/material.dart';

class topFood extends StatefulWidget {
  const topFood({super.key});

  @override
  State<topFood> createState() => _topFood();
}

class _topFood extends State<topFood> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: const Center(
        child: Text("This is top food page", 
        style: TextStyle(
          fontSize: 20
        ),
        ),
      ),
    );
  }
}
