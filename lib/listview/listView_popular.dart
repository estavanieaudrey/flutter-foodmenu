import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class listView_popular extends StatelessWidget {
  listView_popular({super.key});

  final _stories = [
    {'image': 'lib/assets/1.jpg', 'title': 'Steak', 'description': 'si paling sok kaya'},
    {'image': 'lib/assets/2.jpg', 'title': 'Burger', 'description': 'si paling baratable'},
    {'image': 'lib/assets/3.jpg', 'title': 'Pasta', 'description': 'si paling korea'},
    {'image': 'lib/assets/4.jpg', 'title': 'Salad', 'description': 'si paling sehat'},
    {'image': 'lib/assets/5.jpg', 'title': 'Ramen', 'description': 'si paling jepang'},
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
