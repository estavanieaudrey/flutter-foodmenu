import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_ambw/seeall/seeAll_deal_square.dart';

class seeAll_deals extends StatelessWidget {
  seeAll_deals({super.key});

  final List _posts = [
    {'image': 'lib/assets/6.jpg', 'text': 'Deals One', 
    'subtext': ' Fast food is a type of mass-produced food designed for commercial resale and with a strong priority placed on “speed of service” versus other relevant factors involved in culinary science. Fast food was originally created as a commercial strategy to accommodate the larger numbers of busy commuters, travelers and wage workers.'},
    {'image': 'lib/assets/7.jpg', 'text': 'Deals Tu', 
    'subtext': 'This term could refer to someone who enjoys sauce or it could refer to a specific dish that features a prominent sauce component. For example, Sheba Sauce Lover is a product line of cat food that features a generous serving of sauce.'},
    {'image': 'lib/assets/8.jpg', 'text': 'Deals Thri', 
    'subtext': 'Salmon is a common name for several species of ray-finned fish in the family Salmonidae. Salmon are native to tributaries of the North Atlantic and Pacific Ocean. Many species of salmon have been introduced into non-native environments such as the Great Lakes of North America and Patagonia in South America.'},
    {'image': 'lib/assets/9.jpg', 'text': 'Deals For', 
    'subtext': 'A pancake is a flat cake, often thin and round, prepared from a starch-based batter that may contain eggs, milk and butter and cooked on a hot surface such as a griddle or frying pan, often frying with oil or butter.'},
    {'image': 'lib/assets/10.jpg', 'text': 'Deals Fiv', 
    'subtext': 'Berries are small, pulpy, and often edible fruits. Typically, berries are juicy, rounded, brightly colored, sweet, sour or tart, and do not have a stone or pit, although many pips or seeds may be present.'},
    {'image': 'lib/assets/11.jpg', 'text': 'Deals Six', 
    'subtext': 'Shrimp are usually cooked until they turn pink and are no longer translucent1. They are a great source of protein and can be prepared in a variety of ways.'},
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
                  return seeAll_deal_square(
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
