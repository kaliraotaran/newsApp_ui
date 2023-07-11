import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:news_appui/models/news_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({required this.data, super.key});
  newsData data;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.data.title,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                widget.data.author!,
                style: TextStyle(color: Colors.grey),
              ),
              SizedBox(
                height: 20,
              ),
              Hero(
                tag: "${widget.data.title}",
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    widget.data.urlToImage,
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                widget.data.content,
                style: TextStyle(
                  fontSize: 15,
                ),
              )
            ]),
      ),
    );
  }
}
