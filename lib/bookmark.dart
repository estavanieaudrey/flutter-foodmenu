import 'package:flutter/material.dart';

class bookMark extends StatefulWidget {
  const bookMark({super.key});

  @override
  State<bookMark> createState() => _bookMark();
}

class _bookMark extends State<bookMark> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: const Center(
        child: Text("This is bookmark page", 
        style: TextStyle(
          fontSize: 20
        ),
        ),
      ),
    );
  }
}
