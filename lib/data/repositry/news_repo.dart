import 'package:world_news/data/Api/news_api.dart';
import 'package:world_news/data/models/news_model.dart';

class NewsRepo {
  final NewsApi newsApi;

  NewsRepo({required this.newsApi});

  Future<List<NewsModel>> getNews() async {
    final newsData = await newsApi.getnews();

    print("🔥 Raw API Data in Repo: $newsData"); // ✅ تأكيد استقبال البيانات

    return newsData.map((item) => NewsModel.fromJson(item)).toList();
  }
}
