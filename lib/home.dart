import 'package:flutter/material.dart';
import 'package:uts_ambw/bookmark.dart';
import 'package:uts_ambw/profile.dart';
import 'package:uts_ambw/top_food.dart';
import 'homepage.dart';
import 'discovery.dart';

class Stater extends StatelessWidget {
  const Stater({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () => Navigator.of(context).pop(),
          ),
          title: const Text(
            "McAudrey Menu",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
          ),
        ),

        //MENU PALING BAWAH
        bottomNavigationBar: const Column(
          children: [
            //UNTUK PANGGIL CLASS KE TAB LAIN
            Expanded(
              child: TabBarView(
                children: [
                  homePage(),
                  Discovery(),
                  bookMark(),
                  topFood(),
                  profile(),
                ],
              ),
            ),
            TabBar(
              indicatorColor: Colors.blue,
              unselectedLabelColor:
                  Colors.black, // Warna ikon saat tab tidak aktif
              labelColor: Colors.blue, // Warna ikon saat tab aktif
              tabs: [
                Tab(
                  icon: Icon(Icons.home_outlined),
                ),
                Tab(
                  icon: Icon(Icons.location_on_outlined),
                ),
                Tab(
                  icon: Icon(Icons.bookmark_border_outlined),
                ),
                Tab(
                  icon: Icon(Icons.emoji_events_outlined),
                ),
                Tab(
                  icon: Icon(Icons.person_4_outlined),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
