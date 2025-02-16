import 'package:flutter/material.dart';
import 'package:world_news/constans/strings.dart';
import 'package:world_news/widgets/coustm_text.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, detailsscreen),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Hero(
          tag: 1,
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset('Assets/n2.png'),
              ),
              CoustmText(text: 'aaaadshfhfhfhfhfhfbf'),
            ],
          ),
        ),
      ),
    );
  }
}
