
import 'package:dio/dio.dart';

import '../models/news_model.dart';

class Newsservice {
  final Dio dio;

  Newsservice({required this.dio});



  Future<List<NewsModel>> getTopHeadlines({required String country,required String category }) async
  {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=$country&apiKey=3da713be28064f708b181db3297152a8&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> newslist = [];

      for (var x in articles) {
        NewsModel newsmodel = NewsModel(
            image: x['urlToImage'], text1: x['title'], text2: x['description'],url: x['url']);
        newslist.add(newsmodel);
      }
      return newslist;
    }
    catch(e)
    {
      return [];

    }
  }


}