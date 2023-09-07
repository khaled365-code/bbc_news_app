import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';







class Categorypage extends StatelessWidget {


  final String category;

  Categorypage({required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: SafeArea(
       child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              NewsListViewBuilder(
                category: '$category',
                country: 'us',
              ),
            ],
          ),
        ),
     ),



    );
  }

}