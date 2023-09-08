import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';

import 'news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {



  final String country;
  final String category;


  const  NewsListViewBuilder({required this.country,required this.category});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {


  var future;
  @override
  void initState() {
    super.initState();
    future = Newsservice(dio: Dio()).getTopHeadlines(country: widget.country,category: widget.category);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<NewsModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Padding(padding: const EdgeInsets.symmetric(horizontal: 15),child:Center(child:Text('Error occured while app is runing please try again later......',style:TextStyle(fontSize:40,fontWeight:FontWeight.bold,color:Colors.black),))));
          } else {
            return  const SliverToBoxAdapter(
                child:  Padding(
                  padding: EdgeInsetsDirectional.symmetric(vertical:200,horizontal: 70),
                    child: Center(child: CircularProgressIndicator(color: Colors.blue,strokeWidth: 4,)))
          );
          }
        });
  }
}
