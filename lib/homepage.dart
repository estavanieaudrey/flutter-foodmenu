import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:uts_ambw/listview/listView_deals.dart';
import 'package:uts_ambw/seeall/seeAll_deals.dart';
import 'package:uts_ambw/seeall/seeAll_popular.dart';
import 'listview/listView_popular.dart';
import 'carousel.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homepage();
}

class _homepage extends State<homePage> {
  final _textController = TextEditingController();
  String userPost = '';
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 100),
      child: SingleChildScrollView(
        // Tambahkan ini
        child: Container(
          // color: Colors.pink,
          child: Center(
            child: Column(
              //SEARCH BAR
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(userPost),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: 'What\'s food do you want?',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      prefixIcon: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: IconButton(
                          icon: const Icon(Icons.search_outlined),
                          onPressed: () {},
                        ),
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          _textController.clear();
                        },
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                ),

                //CAROUSEL
                CarouselWithIndicator(),

                //TEXT MOST POPULAR
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child: Padding(
                //     padding: EdgeInsets.only(top: 10, left: 20),
                //     child: Text(
                //       "Most Popular",
                //       style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //     ),
                //   ),
                // ),

                //BUTTON TEXT SEE ALL NYA MOST POPULAR
                Row(
                  children: [
                    const Align(
                      // alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Most Popular",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Padding(
                        padding: EdgeInsets.only(left: 175),
                        child: Align(
                          // alignment: Alignment.bottomRight,
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 121, 137),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),

                      onPressed: () {
                        // pindah ke halaman SecondPage
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => seeAll_popular()));
                      },
                      // color: Colors.green,
                    ),
                  ],
                ),

                //LIST VIEW MOST POPULAR
                // Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // children: [
                listView_popular(),
                // ]

                // ),

                //TEXT MEAL DEALS
                // const Align(
                //   alignment: Alignment.centerLeft,
                //   child: Padding(
                //     padding: EdgeInsets.only(top: 10, left: 20),
                //     child: Text(
                //       "Meal Deals",
                //       style:
                //           TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                //     ),
                //   ),
                // ),

                //BUTTON TEXT SEE ALL NYA MEAL DEALS
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Align(
                      // alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20),
                        child: Text(
                          "Best Deals!",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    TextButton(
                      child: const Padding(
                        padding: EdgeInsets.only(left: 200),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'See All',
                            style: TextStyle(
                              color: Color.fromARGB(255, 0, 121, 137),
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => seeAll_deals()));
                      },
                      // color: Colors.green,
                    ),
                  ],
                ),

                //LIST VIEW MEAL DEALS
                listView_deals(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
