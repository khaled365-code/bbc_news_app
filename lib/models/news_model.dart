import 'package:flutter/material.dart';




class NewsModel
{

  String? image;
  String? text1;
  String? text2;
  String url;

  NewsModel({required this.image,required this.text1,required this.text2,required this.url});

  factory NewsModel.fromJson(json)
  {
    return NewsModel(image: json['urlToImage'], text1: json['title'], text2: json['description'],url: json['url']);
  }

}