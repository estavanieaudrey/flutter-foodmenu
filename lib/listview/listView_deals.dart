// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'shape_deals.dart';

// class listView_deals extends StatelessWidget {
//   listView_deals({super.key});

//   final _stories = [
//     'story 1',
//     'story 2',
//     'story 3',
//     'story 4',
//     'story 5',
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return 
//             SizedBox(
//               height: 100,
//               child: ListView.builder(
//                 padding: const EdgeInsets.all(8.0),
//                 itemCount: _stories.length,
//                 scrollDirection: Axis.horizontal,
//                 itemBuilder: (context, index) {
//                   return shape_deals(child: _stories[index]);	//first make a new List of _stories
//                 },
//               ),
//             );
            
          
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class listView_deals extends StatelessWidget {
  listView_deals({super.key});

  
    final _stories = [
    {'image': 'lib/assets/6.jpg', 'title': 'Deals One', 'description': 'si paling fast food'},
    {'image': 'lib/assets/7.jpg', 'title': 'Deals Tu', 'description': 'si paling sauce lover'},
    {'image': 'lib/assets/8.jpg', 'title': 'Deals Thri', 'description': 'si paling salmon'},
    {'image': 'lib/assets/9.jpg', 'title': 'Deals For', 'description': 'si paling dessert'},
    {'image': 'lib/assets/10.jpg', 'title': 'Deals Fiv', 'description': 'si paling berries'},
    {'image': 'lib/assets/11.jpg', 'title': 'Deals Six', 'description': 'si paling western'},
    {'image': 'lib/assets/18.jpeg', 'title': 'Deals Seven', 'description': 'si paling indian food'},
    {'image': 'lib/assets/19.jpeg', 'title': 'Deals Eight', 'description': 'si paling tempura'},
    {'image': 'lib/assets/20.jpeg', 'title': 'Deals Nain', 'description': 'si paling beef'},
    {'image': 'lib/assets/21.jpeg', 'title': 'Deals Ten', 'description': 'si paling sushi'},
    {'image': 'lib/assets/22.jpeg', 'title': 'Deals Eleven', 'description': 'si paling kari fuudd'},
    {'image': 'lib/assets/23.jpeg', 'title': 'Deals Tuelv', 'description': 'si paling ikan mahal'},
    // Tambahkan data lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        padding: const EdgeInsets.all(3),
        itemCount: _stories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return storyCard(_stories[index]);
        },
        separatorBuilder: (context, index) {
          return SizedBox(width: 9);
        },
      ),
    );
  }

  Widget storyCard(Map<String, String> story) {
    return Card(
      child: Container(
        width: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // mainAxisSize: MainAxisSize.min, // untuk batasi ukuran
          children: [
            Expanded(
              // Menggunakan widget Expanded
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: AspectRatio(
                  aspectRatio: 1.2,
                child: Image.asset(story['image']!, fit: BoxFit.cover),
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(story['title']!,
                  style:
                      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Text(story['description']!,
              style:
                      const TextStyle(fontSize: 12,
                      )),
            ),
          ],
        ),
      ),
    );
  }
}