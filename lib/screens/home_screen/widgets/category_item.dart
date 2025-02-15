import 'package:flutter/material.dart';
import 'package:world_news/constans/colors.dart';
import 'package:world_news/widgets/coustm_text.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.image, required this.text});
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: 220,
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: AssetImage(image))),
        child: Center(
            child: CoustmText(
          fontsize: 30,
          text: text,
          color: Appcolor.white,
        )),
      ),
    );
  }
}
