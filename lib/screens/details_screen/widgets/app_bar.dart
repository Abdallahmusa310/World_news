import 'package:flutter/material.dart';
import 'package:world_news/constans/colors.dart';
import 'package:world_news/data/models/news_model.dart';
import 'package:world_news/widgets/coustm_text.dart';

class Appbar extends StatelessWidget {
  const Appbar({
    super.key,
    required this.news,
  });
  final NewsModel news;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 600,
      stretch: true,
      pinned: true,
      backgroundColor: Appcolor.white,
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          tag: 1,
          child: Image.network(
            news.urlToImage,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) => Image.asset(
              'Assets/n7.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        title: CoustmText(
          text: news.title,
          color: Appcolor.white,
        ),
        centerTitle: true,
      ),
    );
  }
}
