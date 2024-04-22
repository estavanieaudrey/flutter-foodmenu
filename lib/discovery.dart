import 'package:flutter/material.dart';

class Discovery extends StatefulWidget {
  const Discovery({super.key});

  @override
  State<Discovery> createState() => _discovery();
}

class _discovery extends State<Discovery> {

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: const Center(
        child: Text("This is discovery page", 
        style: TextStyle(
          fontSize: 20
        ),
        ),
      ),
      
    );
  }
}
