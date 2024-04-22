import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class listView_popular extends StatelessWidget {
  listView_popular({super.key});

  final _stories = [
    {
      'image': 'lib/assets/1.jpg',
      'title': 'Steak',
      'description': 'si paling sok kaya'
    },
    {
      'image': 'lib/assets/2.jpg',
      'title': 'Burger',
      'description': 'si paling baratable'
    },
    {
      'image': 'lib/assets/3.jpg',
      'title': 'Pasta',
      'description': 'si paling korea'
    },
    {
      'image': 'lib/assets/4.jpg',
      'title': 'Salad',
      'description': 'si paling sehat'
    },
    {
      'image': 'lib/assets/5.jpg',
      'title': 'Ramen',
      'description': 'si paling jepang'
    },
    {
      'image': 'lib/assets/12.jpeg',
      'title': 'Sharmawa',
      'description': 'si paling ayam'
    },
    {
      'image': 'lib/assets/13.jpeg',
      'title': 'Mansaf',
      'description': 'si paling kambing'
    },
    {
      'image': 'lib/assets/14.jpeg',
      'title': 'Mandi Rice',
      'description': 'si paling nasi'
    },
    {
      'image': 'lib/assets/15.jpeg',
      'title': 'Manaeesh',
      'description': 'si paling maniiiss'
    },
    {
      'image': 'lib/assets/16.jpeg',
      'title': 'Kabsa',
      'description': 'si paling indian'
    },
    {
      'image': 'lib/assets/17.jpeg',
      'title': 'Cheese Fatayer',
      'description': 'si paling keju'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
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
            ),
          ),
        ],
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
            Text(story['title']!,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            Text(story['description']!),
          ],
        ),
      ),
    );
  }

  // Widget storyCard(Map<String, String> story) {
  //   return Card(
  //     clipBehavior: Clip.antiAlias, // Ini akan memotong isi sesuai bentuk Card
  //     shape: RoundedRectangleBorder(
  //       borderRadius:
  //           BorderRadius.circular(15), // Sesuaikan radius sesuai kebutuhan
  //     ),
  //     child: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       children: [
  //         Expanded(
  //           child: ClipRRect(
  //             borderRadius: const BorderRadius.only(
  //               topLeft: Radius.circular(15),
  //               topRight: Radius.circular(15),
  //             ),
  //             child: Image.asset(story['image']!,
  //                 fit: BoxFit.cover), // Hapus AspectRatio
  //           ),
  //         ),
  //         Padding(
  //           padding: const EdgeInsets.all(8.0), // Tambahkan padding untuk teks
  //           child: Column(
  //             children: [
  //               Text(
  //                 story['title']!,
  //                 style: const TextStyle(
  //                     fontSize: 20, fontWeight: FontWeight.bold),
  //               ),
  //               Text(story['description']!),
  //             ],
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }
}
