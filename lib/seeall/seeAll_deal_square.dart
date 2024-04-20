import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class seeAll_deal_square extends StatelessWidget {
  final String child;
  const seeAll_deal_square({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            
            height: 200,
            color: Colors.deepOrange[200],
            child: Image.asset(child, fit: BoxFit.cover),
          ),
        ),
      ),
    );
  }
}
