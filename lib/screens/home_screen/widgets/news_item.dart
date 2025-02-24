import 'package:flutter/material.dart';
import 'package:world_news/constans/strings.dart';
import 'package:world_news/data/models/news_model.dart';
import 'package:world_news/widgets/coustm_text.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.news});
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        detailsscreen,
        arguments: news,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Hero(
          tag: 1,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: 500,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    news.urlToImage,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Image.asset(
                      'Assets/n7.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 8),
              CoustmText(text: news.title),
              SizedBox(height: 4),
              CoustmText(text: news.description),
            ],
          ),
        ),
      ),
    );
  }
}
