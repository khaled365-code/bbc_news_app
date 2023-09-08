import 'package:flutter/material.dart';
import 'package:news_app/models/card_model.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
import '../components/category_card.dart';




class Homescreen extends StatelessWidget {

  List<NewsModel> articles=[];

  List<CategoryModel>fCategoryList=[
    CategoryModel(image: 'assets/images/entertaiment.avif',text: 'Entertainment',color: Colors.white),
    CategoryModel(text: 'Technology', image: 'assets/images/technology.jpeg',color: Colors.white),
    CategoryModel(image: 'assets/images/entertaiment.avif',text: 'Science',color: Colors.white),
    CategoryModel(image: 'assets/images/technology.jpeg',text: 'Sports',color: Colors.white ),
    CategoryModel(image: 'assets/images/entertaiment.avif',text: 'General',color: Colors.white)
  ];


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 80),
          child: Row(
            children: [
              Text('News',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight:FontWeight.bold),),
              Text('Cloud',style: TextStyle(color: Colors.orange,fontSize: 20,fontWeight:FontWeight.bold),),
            ],
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: buildCardsList(),),
            const NewsListViewBuilder(
              category: 'general',
              country: 'us',
            ),
          ],
        ),
      ),
     );

  }

  Container buildCardsList() {
    return Container(
              height: 100,
              width: double.infinity,
              child :ListView.separated(
                physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Categorycard(
                    firstModel: fCategoryList[index],
                  ),
                  separatorBuilder: (context, index) => const SizedBox(width: 10,),
                  itemCount: fCategoryList.length),

            );
  }
}
