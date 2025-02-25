import 'package:world_news/data/Api/news_api.dart';
import 'package:world_news/data/models/news_model.dart';

class CategoryRepo {
  final NewsApi newsApi;
  final String q;

  CategoryRepo({required this.newsApi, required this.q});

  Future<List<NewsModel>> getNews() async {
    final newsData = await newsApi.getnews(q: q);

    return newsData.map((item) => NewsModel.fromJson(item)).toList();
  }
}
