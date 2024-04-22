import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_ambw/seeall/seeAll_pop_square.dart';

class seeAll_popular extends StatelessWidget {
  seeAll_popular({super.key});

  final List _posts = [
    {'image': 'lib/assets/1.jpg', 'text': 'Steak', 
    'subtext': 'A steak is a cut of meat, usually beef, that is served as a main course. It’s often grilled, but can also be pan-fried, broiled, or baked. The quality and flavor of steak can vary based on the cut and how it’s cooked.'},
    {'image': 'lib/assets/2.jpg', 'text': 'Burger', 
    'subtext': 'A burger, short for hamburger, typically consists of one or more cooked patties of ground meat, usually beef, placed inside a sliced bread roll or bun. Burgers are often served with cheese, lettuce, tomato, bacon, onion, pickles, and condiments such as mustard, mayonnaise, ketchup, and relish.'},
    {'image': 'lib/assets/3.jpg', 'text': 'Pasta', 
    'subtext': 'Pasta is a type of Italian dish made from an unleavened dough of wheat flour mixed with water or eggs, and formed into sheets or various shapes, then cooked by boiling or baking.'},
    {'image': 'lib/assets/4.jpg', 'text': 'Salad', 
    'subtext': 'A salad is a dish consisting of mixed pieces of food, usually vegetables or fruits; however, different varieties can contain virtually any type of food. Salads are typically served at room temperature or chilled.'},
    {'image': 'lib/assets/5.jpg', 'text': 'Ramen', 
    'subtext': 'Ramen is a Japanese dish with Chinese origins. It consists of Chinese-style wheat noodles served in a meat or fish-based broth, often flavored with soy sauce or miso, and uses toppings such as sliced pork, nori (dried seaweed), and scallions.'},
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
                  return seeAll_pop_square(
                    child: _posts[index]['image'],
                    text: _posts[index]['text'],
                    subtext: _posts[index]['subtext'],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
