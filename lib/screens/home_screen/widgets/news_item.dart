import 'package:flutter/material.dart';
import 'package:world_news/constans/strings.dart';
import 'package:world_news/data/models/news_model.dart';
import 'package:world_news/widgets/coustm_text.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, this.news});
  final NewsModel? news;

  @override
  Widget build(BuildContext context) {
    if (news == null) {
      return Container(); // إذا كانت البيانات غير موجودة، لا تعرض أي شيء
    }

    print("Displaying news: ${news!.title}"); // تحقق من أن العنوان موجود

    return InkWell(
      onTap: () => Navigator.pushNamed(context, detailsscreen),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Hero(
          tag: news!.title,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child:
                    Image.network(errorBuilder: (context, error, stackTrace) {
                  return Image.network(
                    'Assets/n7.png', // ✅ صورة بديلة عند حدوث خطأ
                    fit: BoxFit.cover,
                  );
                }, news!.urlToImage),
              ),
              SizedBox(height: 8),
              CoustmText(text: news!.title),
              SizedBox(height: 4),
              CoustmText(text: news!.description),
            ],
          ),
        ),
      ),
    );
  }
}
