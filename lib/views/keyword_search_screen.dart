import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_tile.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/news_list_view.dart';






class Keywordsearch extends StatefulWidget {


  String appbarText;

  Keywordsearch({required this.appbarText});

  @override
  State<Keywordsearch> createState() => _KeywordsearchState();
}

class _KeywordsearchState extends State<Keywordsearch> {


  var future;
  List<NewsModel>? articles;
  NewsModel? newsModel;

  @override
  void initState() {
    super.initState();
    future = Newsservice(dio: Dio()).getEveryThing(widget.appbarText);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.red[900],
        ),
        title: Text(widget.appbarText,
          style: TextStyle(color: Colors.white, fontSize: 20),),
        centerTitle: true,
      ),

      body: FutureBuilder<List<NewsModel>>
        (
          future: future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              articles=snapshot.data!;
              return ListView.separated(
                  itemBuilder: (context, index) => InkWell(
                    onTap: ()
                    {
                      _launchUrl(newsModel: articles![index]);

                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          const SizedBox(height: 30,),
                          Image.network(articles![index].image ??=
                          'https://media.gettyimages.com/photos/good-news-headlines-picture-id157523298',
                            fit: BoxFit.cover,),
                          const SizedBox(height: 5,),
                          Text(articles![index].text1 ?? '', maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),),
                          const SizedBox(height: 10,),
                          Text(articles![index].text2 ?? '', maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(fontSize: 20, color: Colors.grey),),
                        ],
                      ),
                    ),
                  ) ,
                  separatorBuilder: (context, index) => SizedBox(height: 10,),
                  itemCount: articles!.length);
            }
            else if (snapshot.hasError) {
              return const Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Center(child: Text(
                        'Error occured while app is runing please try again later......',
                        style: TextStyle(fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),)));
            }
            else {
              return Padding(
                      padding: EdgeInsetsDirectional.symmetric(
                          vertical: 200, horizontal: 70),
                      child: Center(child: CircularProgressIndicator(
                        color: Colors.blue, strokeWidth: 4,)));
            }
          }
      ),
    );
  }
  Future<void> _launchUrl({required NewsModel newsModel}) async
  {
    final Uri _url = Uri.parse(newsModel.url);
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }


}


