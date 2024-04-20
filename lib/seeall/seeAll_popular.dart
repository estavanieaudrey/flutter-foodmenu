import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_ambw/seeall/seeAll_pop_square.dart';

class seeAll_popular extends StatelessWidget {
  seeAll_popular({super.key});

  final List _posts = [
    'lib/assets/1.jpg',
    'lib/assets/2.jpg',
    'lib/assets/3.jpg',
    'lib/assets/4.jpg',
    'lib/assets/5.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            "Most Popular",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
        ),
        body: Column(
          children: [

            //MANGGIL PER IMAGE MENU
            Expanded(
              child: ListView.builder(
                itemCount: _posts.length,
                itemBuilder: (context, index) {
                  return seeAll_pop_square(child: _posts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
