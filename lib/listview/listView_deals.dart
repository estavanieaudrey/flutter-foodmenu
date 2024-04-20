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
    return Container(
      width: 150,
      child: Column(
        mainAxisSize: MainAxisSize.min, // untuk batasi ukuran
        children: [
          Expanded( // Menggunakan widget Expanded
            child: AspectRatio(
              aspectRatio: 1,
              child: Image.asset(story['image']!, fit: BoxFit.cover),
            ),
          ),
          Text(story['title']!, 
          style: const TextStyle(
            fontSize: 20, 
            fontWeight: FontWeight.bold)
            ),
          Text(story['description']!),
        ],
      ),
    );
  }
}
