import 'package:flutter/material.dart';
import 'package:world_news/data/models/news_model.dart';

import '../../../widgets/coustm_text.dart';

class Detailslist extends StatelessWidget {
  const Detailslist({super.key, required this.news});
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildListDelegate([
      Container(
          margin: EdgeInsets.fromLTRB(14, 14, 14, 0),
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CoustmText(text: news.title),
              CoustmText(text: news.description),
              CoustmText(text: news.time),
              SizedBox(
                height: 90,
              )
            ],
          ))
    ]));
  }
}
