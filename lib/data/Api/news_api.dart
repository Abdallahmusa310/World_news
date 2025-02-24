import 'package:dio/dio.dart';
import 'package:world_news/constans/strings.dart';

class NewsApi {
  late Dio dio;

  NewsApi({required q}) {
    BaseOptions options = BaseOptions(
      baseUrl: '$baseurl=$q',
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getnews({required q}) async {
    try {
      Response response = await dio.get('$baseurl=$q');
      print("🔥 Full API Response: ${response.data}");
      if (response.data is Map && response.data.containsKey('articles')) {
        var results = response.data['articles'];
        if (results is List<dynamic> && results.isNotEmpty) {
          print(" Articles Count: ${results.length}");
          return results;
        } else {
          print(" Articles list is empty!");
          return [];
        }
      } else {
        print(" Invalid response format!");
        return [];
      }
    } catch (e) {
      print(' Error fetching news: $e');
      return [];
    }
  }
}
