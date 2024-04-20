import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_ambw/seeall/seeAll_deal_square.dart';

class seeAll_deals extends StatelessWidget {
  seeAll_deals({super.key});

  final List _posts = [
    'lib/assets/6.jpg',
    'lib/assets/7.jpg',
    'lib/assets/8.jpg',
    'lib/assets/9.jpg',
    'lib/assets/10.jpg',
    'lib/assets/11.jpg'
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
            "Best Deals",
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
                  return seeAll_deal_square(child: _posts[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
