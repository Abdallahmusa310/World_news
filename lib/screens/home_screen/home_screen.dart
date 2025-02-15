import 'package:flutter/material.dart';
import 'package:world_news/constans/colors.dart';
import 'package:world_news/screens/home_screen/widgets/list_of_category.dart';
import 'package:world_news/screens/home_screen/widgets/list_of_news.dart';
import 'package:world_news/widgets/coustm_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            )
          ],
        ),
      ),
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverToBoxAdapter(
            child: ListOfCategory(),
          ),
          SliverToBoxAdapter(
            child: ListOfNews(),
          )
        ],
      ),
    );
  }
}
