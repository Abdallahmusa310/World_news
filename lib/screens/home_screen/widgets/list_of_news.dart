import 'package:flutter/material.dart';
import 'package:world_news/screens/home_screen/widgets/news_item.dart';
import 'package:world_news/data/models/news_model.dart';

class ListOfNews extends StatelessWidget {
  const ListOfNews({super.key, required this.newslist});
  final List<NewsModel> newslist;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      itemCount: newslist.length,
      itemBuilder: (context, index) {
        return NewsItem(news: newslist[index]);
      },
    );
  }
}
