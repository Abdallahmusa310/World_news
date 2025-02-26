import 'package:flutter/material.dart';
import 'package:world_news/screens/catgory_screen/widgets/category_item.dart';

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
              CategoryItem(
                image: 'Assets/Politics.png',
                text: 'politics',
                q: 'politics',
              ),
              CategoryItem(
                image: 'Assets/sports.png',
                text: 'sports',
                q: 'sports',
              ),
              CategoryItem(
                image: 'Assets/economics.png',
                text: 'economics',
                q: 'economics',
              ),
              CategoryItem(
                image: 'Assets/health.png',
                text: 'health',
                q: 'health',
              ),
              CategoryItem(
                image: 'Assets/science.png',
                text: 'science',
                q: 'science',
              ),
              CategoryItem(
                image: 'Assets/tecnology.png',
                text: 'tecnology',
                q: 'technology',
              ),
              CategoryItem(
                image: 'Assets/entertamint.png',
                text: 'entertamint',
                q: 'entertainment',
              ),
              CategoryItem(
                image: 'Assets/fashion.png',
                text: 'fathion',
                q: 'fathion',
              ),
            ]),
      ),
    );
  }
}
