import 'package:flutter/material.dart';
import 'package:news_appui/models/news_model.dart';

import '../screens/detail_screen.dart';

class NewsListTile extends StatefulWidget {
  NewsListTile({required this.data, super.key});
  newsData data;
  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsScreen(data: widget.data)));
      },
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20),
        padding: EdgeInsets.all(12),
        height: 130,
        decoration: BoxDecoration(
            color: Colors.black, borderRadius: BorderRadius.circular(25)),
        child: Row(children: [
          Flexible(
              flex: 3,
              child: Hero(
                tag: "${widget.data.title}",
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: AssetImage(widget.data.urlToImage),
                          fit: BoxFit.fitHeight)),
                ),
              )),
          const SizedBox(
            width: 10,
          ),
          Flexible(
              flex: 5,
              child: Column(
                children: [
                  Text(
                    widget.data.title,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    widget.data.content,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ))
        ]),
      ),
    );
  }
}
