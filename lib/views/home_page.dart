import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/views/live_screen.dart';
import 'package:news_app/views/search_screen.dart';
import 'package:news_app/views/menu_screen.dart';
import 'package:news_app/views/top_stories.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';



class Homescreen extends StatelessWidget {

  List<NewsModel> articles=[];




  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        systemOverlayStyle:SystemUiOverlayStyle(
          statusBarColor: Colors.red[900]
        ),
        leading: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Menuscreen(),));
          },
          child: Container(
            width: double.infinity,
            margin: EdgeInsetsDirectional.only(start: 15,top: 2),
              child: Row(
                children: [
                  Text('Menu',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                ],
              )),
        ),
        centerTitle: true,
        title: Text('Top Stories',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight:FontWeight.bold),),
        actions: [
          InkWell(
            onTap: (){},
            child: Container(
              margin: EdgeInsetsDirectional.only(end: 15),
              child: InkWell(
                onTap: ()
                {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Livescreen(),));
                },
                child: Row(
                  children: [
                    Icon(Icons.volume_down_alt,size: 30,),
                    Text('LIVE',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight:FontWeight.bold),)

                  ],
                ),
              ),
            ),
          )
        ],


      ),

        body:Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
          child: Column(
            children: [
              Expanded(
              child: CustomScrollView(
                physics: BouncingScrollPhysics(),
                slivers: <Widget>[
                  const NewsListViewBuilder(
                    category: 'general',
                    country: 'us',
                  ),
                ],
              ),
            ),
              NavigationBar(
                height: 70,
                backgroundColor: Colors.white,
              destinations: [
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Topstories(),));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.my_library_books_outlined,size: 25,color: Colors.grey[600]),
                      SizedBox(height: 5,),
                      Text('Top Stories',style: TextStyle(fontSize: 15),),
                    ],
                  ),
                ),
                InkWell(
                  onTap: ()
                  {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => Searchscreen() ,));
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Icon(Icons.search,size: 25,color: Colors.grey[600] ,),
                      SizedBox(height: 5,),
                      Text('Search',style: TextStyle(fontSize: 15)),
                    ],
                  ),
                ),
              ],
            )
          ],
          ),
        ),
      );

  }


}

