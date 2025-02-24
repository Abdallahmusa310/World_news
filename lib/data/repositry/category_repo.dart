import 'package:world_news/data/Api/news_api.dart';
import 'package:world_news/data/models/news_model.dart';

class NewsRepo {
  final NewsApi newsApi;

  NewsRepo({required this.newsApi});

  Future<List<NewsModel>> getNews() async {
    final newsData = await newsApi.getnews(q: 'general');

    return newsData.map((item) => NewsModel.fromJson(item)).toList();
  }
}
