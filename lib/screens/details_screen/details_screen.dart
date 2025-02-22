import 'package:flutter/material.dart';
import 'package:world_news/constans/colors.dart';
import 'package:world_news/data/models/news_model.dart';
import 'package:world_news/widgets/coustm_text.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, this.news});
  final NewsModel? news;
  @override
  Widget build(BuildContext context) {
    final news = ModalRoute.of(context)!.settings.arguments as NewsModel?;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 600,
            stretch: true,
            pinned: true,
            backgroundColor: Appcolor.white,
            flexibleSpace: FlexibleSpaceBar(
              background: Hero(
                tag: 1,
                child: Image.network(
                  news!.urlToImage,
                  fit: BoxFit.cover,
                ),
              ),
              title: CoustmText(
                text: news.title,
                color: Appcolor.white,
              ),
              centerTitle: true,
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
                margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CoustmText(text: 'aaaa'),
                    CoustmText(text: 'aaaa'),
                    CoustmText(text: 'aaaa'),
                    CoustmText(text: 'aaaa'),
                    CoustmText(text: 'aaaa'),
                    CoustmText(text: 'aaaa'),
                    SizedBox(
                      height: 90,
                    )
                  ],
                ))
          ]))
        ],
      ),
    );
  }
}
