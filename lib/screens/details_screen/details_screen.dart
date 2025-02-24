import 'package:flutter/material.dart';
import 'package:world_news/data/models/news_model.dart';
import 'package:world_news/screens/details_screen/widgets/app_bar.dart';
import 'package:world_news/screens/details_screen/widgets/list_of_details.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, this.news});
  final NewsModel? news;
  @override
  Widget build(BuildContext context) {
    final news = ModalRoute.of(context)!.settings.arguments as NewsModel?;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          Appbar(news: news!),
          Detailslist(
            news: news,
          )
        ],
      ),
    );
  }
}
