import 'package:flutter/material.dart';
import 'package:world_news/screens/home_screen/widgets/news_item.dart';

class ListOfNews extends StatelessWidget {
  const ListOfNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
              NewsItem(),
            ],
          ),
        ),
      ),
    );
  }
}
