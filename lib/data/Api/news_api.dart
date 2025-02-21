import 'package:dio/dio.dart';
import 'package:world_news/constans/strings.dart';

class NewsApi {
  late Dio dio;

  NewsApi() {
    BaseOptions options = BaseOptions(
      baseUrl: url,
      receiveDataWhenStatusError: true,
      connectTimeout: Duration(seconds: 20),
      receiveTimeout: Duration(seconds: 20),
    );

    dio = Dio(options);
  }

  Future<List<dynamic>> getnews() async {
    try {
      Response response = await dio.get(url);

      print("🔥 Full API Response: ${response.data}"); // ✅ طباعة البيانات كاملة

      if (response.data is Map && response.data.containsKey('articles')) {
        var results = response.data['articles'];

        if (results is List<dynamic> && results.isNotEmpty) {
          print("✅ Articles Count: ${results.length}"); // ✅ طباعة عدد الأخبار
          return results;
        } else {
          print("⚠️ Articles list is empty!");
          return []; // قائمة فارغة لمنع الأخطاء
        }
      } else {
        print("❌ Invalid response format!");
        return [];
      }
    } catch (e) {
      print('⚠️ Error fetching news: $e');
      return [];
    }
  }
}
