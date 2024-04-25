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
    {'image': 'lib/assets/12.jpeg', 'text': 'Chicken Sharwama', 
    'subtext': 'A Middle Eastern dish where chicken is marinated in a variety of spices, then grilled or roasted. The cooked chicken is usually wrapped in a flatbread like pita and served with vegetables, pickles, and a garlic yogurt sauce.'},
    {'image': 'lib/assets/13.jpeg', 'text': 'Mansaf', 
    'subtext': 'A traditional Levantine dish made of lamb cooked in a sauce of fermented dried yogurt and served with rice or bulgur. It’s considered the national dish of Jordan.'},
    {'image': 'lib/assets/14.jpeg', 'text': 'Mandi rice', 
    'subtext': 'A traditional Yemeni dish where meat (commonly chicken or lamb) and rice are cooked together in a spiced broth. The dish is known for its unique flavor profile, which comes from the meat’s juices seeping into the rice during cooking.'},
    {'image': 'lib/assets/15.jpeg', 'text': 'Manaeesh', 
    'subtext': 'A Lebanese flatbread typically found in bakeries. It can be topped with a variety of ingredients, but a common version is topped with zaatar (a mix of thyme, sesame seeds, and sumac) or cheese.'},
    {'image': 'lib/assets/16.jpeg', 'text': 'Kabsa', 
    'subtext': 'A rice dish enjoyed throughout the Gulf States of the Arabian Peninsula. It’s heavily influenced by Persian and Indian biryanis, and involves cooking spiced, long-grain rice in the water that was used for cooking fish or meat.'},
    {'image': 'lib/assets/17.jpeg', 'text': 'Cheese Fatayer', 
    'subtext': 'Small savory cheese pies, typically found in bakeries. The cheese filling is often combined with other ingredients like spinach or meat. The dough is then folded over the filling and baked.'},
    {'image': 'lib/assets/24.jpeg', 'text': 'Hummus', 
    'subtext': 'Hummus is a Middle Eastern dip, spread, or savory dish made from cooked, mashed chickpeas blended with tahini, lemon juice, and garlic. The standard garnish in the Middle East includes olive oil, a few whole chickpeas, parsley, and paprika.'},
    {'image': 'lib/assets/25.jpeg', 'text': 'Luqaimat', 
    'subtext': 'Luqaimat are sweet dumplings that originate from the Middle East6. They are made of flour, yeast, cardamom and saffron, and are deep-fried till they are a nice golden color. These balls of delight are crunchy on the outside and soft and airy on the inside'},
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
