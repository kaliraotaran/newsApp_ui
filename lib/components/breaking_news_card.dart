import 'package:flutter/material.dart';
import 'package:news_appui/models/news_model.dart';
import 'package:news_appui/screens/detail_screen.dart';

// ignore: must_be_immutable
class BreakingNewsCard extends StatefulWidget {
  BreakingNewsCard({super.key, required this.data});
  newsData data;

  @override
  State<BreakingNewsCard> createState() => _BreakingNewsState();
}

class _BreakingNewsState extends State<BreakingNewsCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetailsScreen(data: widget.data)));
        },
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(widget.data.urlToImage))),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              gradient: const LinearGradient(
                  colors: [Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
            ),
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.data.title,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  widget.data.author!,
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
