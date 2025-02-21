import 'package:flutter/material.dart';
import 'package:world_news/screens/home_screen/widgets/news_item.dart';
import 'package:world_news/data/models/news_model.dart';

class ListOfNews extends StatelessWidget {
  const ListOfNews({super.key, this.newslist});
  final List<NewsModel>? newslist;

  @override
  Widget build(BuildContext context) {
    print(
        "Received newslist: $newslist"); // تحقق من أن newslist تحتوي على البيانات

    if (newslist == null || newslist!.isEmpty) {
      return Center(
          child: Text('No news available')); // تأكد من أن الأخبار موجودة
    } else {
      return Expanded(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: newslist!.map((newsItem) {
                return NewsItem(news: newsItem);
              }).toList(),
            ),
          ),
        ),
      );
    }
  }
}
