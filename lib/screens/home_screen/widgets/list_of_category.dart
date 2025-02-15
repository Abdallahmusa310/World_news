import 'package:flutter/material.dart';
import 'package:world_news/screens/home_screen/widgets/category_item.dart';

class ListOfCategory extends StatelessWidget {
  const ListOfCategory({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 150,
        child: ListView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            children: [
              CategoryItem(image: 'Assets/Politics.png', text: 'politics'),
              CategoryItem(image: 'Assets/sports.png', text: 'sports'),
              CategoryItem(image: 'Assets/economics.png', text: 'economics'),
              CategoryItem(image: 'Assets/health.png', text: 'health'),
              CategoryItem(image: 'Assets/science.png', text: 'science'),
              CategoryItem(image: 'Assets/tecnology.png', text: 'tecnology'),
              CategoryItem(
                  image: 'Assets/entertamint.png', text: 'entertamint'),
              CategoryItem(image: 'Assets/fashion.png', text: 'fathion'),
            ]),
      ),
    );
  }
}
