import 'package:flutter/material.dart';

import '../widgets/news_list_view_builder.dart';







class Categorypage extends StatelessWidget {


    String category;
    String country;

  Categorypage({required this.category, required this.country});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

     body: SafeArea(
       child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: CustomScrollView(
            physics: const BouncingScrollPhysics(),
            slivers: [
               NewsListViewBuilder(category: category, country: country,)

            ],
          ),
        ),
     ),



    );
  }

}