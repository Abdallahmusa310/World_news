import 'package:flutter/material.dart';
import 'package:world_news/constans/colors.dart';
import 'package:world_news/data/models/news_model.dart';
import 'package:world_news/widgets/coustm_text.dart';

class CatgoryScreen extends StatelessWidget {
  const CatgoryScreen({super.key, this.news});
  final NewsModel? news;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CoustmText(text: 'World '),
            CoustmText(
              text: 'News',
              color: Appcolor.yello,
            ),
          ],
        ),
      ),
      body: Column(
        children: [Text('CATEGORY')],
      ),
    );
  }
}
