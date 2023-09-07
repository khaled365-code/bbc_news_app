import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';






class NewsItem extends StatelessWidget {

  NewsItem({required this.newsmodel});

  final NewsModel newsmodel;

  @override
  Widget build(BuildContext context) {
  return ClipRRect(
        borderRadius: BorderRadius.circular(10),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image.network(newsmodel.image??='https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/1024px-No_image_available.svg.png',fit: BoxFit.cover,),
              SizedBox(height: 5,),
              Text(newsmodel.text1 ?? '',maxLines:2,overflow:TextOverflow.ellipsis,style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text(newsmodel.text2 ?? '',maxLines:2,overflow:TextOverflow.ellipsis,style: TextStyle(fontSize: 20,color: Colors.grey),),

            ],
          ),





      );
  }
}
