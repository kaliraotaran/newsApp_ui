import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_appui/components/breaking_news_card.dart';
import 'package:news_appui/components/news_list_tile.dart';
import 'package:news_appui/models/news_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          'NewsApp',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_outlined,
                color: Colors.black,
              ))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            const Text(
              'Breaking News',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
                itemCount: newsData.breakingNewsData.length,
                itemBuilder: (context, index, id) => BreakingNewsCard(
                    //  newsData.breakingNewsData[index],
                    data: newsData
                        .breakingNewsData[index] // this could be the problem
                    ),
                options: CarouselOptions(
                    aspectRatio: 16 / 9,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true)),
            const SizedBox(
              height: 40,
            ),
            const Text(
              'Recent News',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              children: newsData.recentNewsData
                  .map((e) => NewsListTile(
                        data: e,
                      ))
                  .toList(),
            )
          ]),
        ),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(12),
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(24)),
        child: BottomNavigationBar(
            selectedItemColor: Colors.redAccent,
            elevation: 0.0,
            items: const [
              BottomNavigationBarItem(
                  backgroundColor: Colors.transparent,
                  icon: Icon(
                    Icons.home,
                  ),
                  label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.bookmark,
                  ),
                  label: "Bookmark"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.rss_feed_outlined,
                  ),
                  label: "Feed"),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                  ),
                  label: "Profile"),
            ]),
      ),
    );
  }
}
