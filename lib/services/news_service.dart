
import 'package:dio/dio.dart';

import '../models/news_model.dart';

class Newsservice {



  final Dio dio;
  final String apiKey='c2e55aa08d9f4f01a320b373d4863b57';
  final String baseUrl='https://newsapi.org/v2';
  Newsservice({required this.dio});

  Future<List<NewsModel>> getTopHeadlines({required String country,required String category }) async
  {
    try {
      Response response = await dio.get(
          '$baseUrl/top-headlines?country=$country&apiKey=$apiKey&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<NewsModel> newslist = [];

        for(var x in articles)
        {
          NewsModel newsmodel = NewsModel.fromJson(x);
          newslist.add(newsmodel);
        }

        return newslist;
    }
    catch(e)
    {
      return [];

    }
  }
   Future<List<NewsModel>>getEveryThing( String keyWord)async
   {
     try {
       Response response = await dio.get(
           '$baseUrl/everything?q=$keyWord&apiKey=$apiKey');
       Map<String, dynamic> jsonData = response.data;
       List<dynamic> articles = jsonData['articles'];
       List<NewsModel>newslist = [];
       for (var x in articles) {
         NewsModel newsModel = NewsModel.fromJson(x);
         newslist.add(newsModel);
       }
       return newslist;
     }
     catch(e)
     {
       return [];
     }
     }



}