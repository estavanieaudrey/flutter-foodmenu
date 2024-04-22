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
    {'image': 'lib/assets/18.jpeg', 'text': 'Deals Seven', 
    'subtext': 'A layered dessert made of filo pastry sheets, filled with chopped nuts, and sweetened with syrup or honey. It’s popular in many Middle Eastern and Mediterranean countries.'},
    {'image': 'lib/assets/19.jpeg', 'text': 'Deals Eight', 
    'subtext': 'A Japanese dish where seafood, vegetables, or sushi are lightly battered and deep fried to create a light, crispy coating.'},
    {'image': 'lib/assets/20.jpeg', 'text': 'Deals Nain', 
    'subtext': 'A Japanese BBQ dish where beef is marinated, then grilled over an open flame. The term “yakiniku” refers to the grilling process and can apply to any cut or breed of cow.'},
    {'image': 'lib/assets/21.jpeg', 'text': 'Deals Ten', 
    'subtext': 'Sushi is a Japanese dish featuring specially prepared rice and usually some type of fish or seafood, often raw, but sometimes cooked1. The word “sushi” refers to the sour flavor of the vinegared rice1. The rice is so important that sushi chefs in Japan undergo years of training just to learn how to cook the rice properly1. There are two main types of sushi—nigiri and maki.'},
    {'image': 'lib/assets/22.jpeg', 'text': 'Deals Eleven', 
    'subtext': 'Chicken curry is a traditional Indian dish made by simmering chicken pieces with plenty of spices, herbs, onions, and tomatoes6. It is believed to have originated in India & now made and enjoyed all over the world6. Indian chicken curry typically starts with whole spices, heated in oil.'},
    {'image': 'lib/assets/23.jpeg', 'text': 'Deals Tuelv', 
    'subtext': 'Unagi the Japanese word for freshwater eel, is an elongated fatty fish, rich and bold in flavor7. Different than anago, its saltwater cousin, unagi is widely used in Asian cuisines and can never be eaten raw, as eel blood has toxins in it that can kill all animals.'},

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
