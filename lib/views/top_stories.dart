import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:news_app/views/category_page.dart';
import '../models/card_model.dart';
import 'menu_screen.dart';


List<CategoryModel>fCategoryList = [
  CategoryModel(image: 'assets/images/entertaiment.avif',
      text: 'Entertainment',
      color: Colors.white),
  CategoryModel(text: 'Technology',
      image: 'assets/images/technology.jpeg',
      color: Colors.white),
  CategoryModel(image: 'assets/images/entertaiment.avif',
      text: 'Science',
      color: Colors.white),
  CategoryModel(image: 'assets/images/technology.jpeg',
      text: 'Sports',
      color: Colors.white),
  CategoryModel(image: 'assets/images/entertaiment.avif',
      text: 'General',
      color: Colors.white)
];



class Topstories extends StatefulWidget {


  @override
  State<Topstories> createState() => _TopstoriesState();
}

class _TopstoriesState extends State<Topstories> {

  bool countrySelected=false;
  bool categorySelected=false;
  var countryName='';
  var categoryName='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.red[900],
        systemOverlayStyle:
        SystemUiOverlayStyle(statusBarColor: Colors.red[900]),
        leading: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Menuscreen(),
                ));
          },
          child: Container(
              width: double.infinity,
              margin: EdgeInsetsDirectional.only(start: 15, top: 2),
              child: Row(
                children: [
                  Text(
                    'Menu',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        centerTitle: true,
        title: Text(
          'Top Stories',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      )
      , body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 13, top: 40),
                child: Text('Select Country and Category', style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 5,),
              Padding(
                padding: const EdgeInsets.only(left: 12, right: 12),
                child: Container(
                  child: Column(
                      children: [
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            buildcountryContainer(
                              showedText: 'USA',
                              apiText: 'us'

                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'France',
                              apiText: 'fr'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Germany',
                              apiText: 'de'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Egypt',
                              apiText: 'eg'
                            )


                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            buildcountryContainer(
                              showedText: 'Canada',
                              apiText: 'ca'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Italia',
                              apiText: 'it'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Australia',
                              apiText: 'au'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'ُEngland',
                              apiText: 'gb'
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            buildcountryContainer(
                              showedText: 'Mexico',
                              apiText: 'mx'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Russia',
                              apiText: 'ru'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Japan',
                              apiText: 'jp'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Sweden',
                              apiText: 'se'
                            ),


                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            buildcountryContainer(
                              showedText: 'Ukraine',
                              apiText: 'ua'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Turkey',
                              apiText: 'tr'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'China',
                              apiText: 'cn'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Austria',
                              apiText: 'at'
                            ),


                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            buildcountryContainer(
                              showedText: 'india',
                              apiText: 'in'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Latvia',
                              apiText: 'lv'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Morocco',
                               apiText: 'ma'
                            ),
                            SizedBox(width: 8,),
                            buildcountryContainer(
                              showedText: 'Lithuania',
                              apiText: 'lt'
                            ),


                          ],
                        ),
                      ]),),),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  children: [
                    Row(
                      children:
                      [
                        buildCategoryCard(image: 'assets/images/entertaiment.avif',
                          showedText: 'Entertainment',
                          apiText: 'entertainment'
                        ),
                        SizedBox(width: 10,),
                        buildCategoryCard(
                            image: 'assets/images/technology.jpeg',
                            showedText: 'Technology',
                            apiText: 'technology'

                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children:
                      [
                        buildCategoryCard(
                            image: 'assets/images/entertaiment.avif',
                            showedText: 'Science',
                            apiText: 'science'
                        ),
                        SizedBox(width: 10,),
                        buildCategoryCard(
                            image: 'assets/images/technology.jpeg',
                            showedText: 'Sports',
                            apiText: 'sports'
                        )


                      ],),
                    SizedBox(height: 10,),
                    Row(
                      children:
                      [
                        buildCategoryCard(
                            image: 'assets/images/entertaiment.avif',
                            showedText: 'General',
                             apiText:  'general'
                        ),
                        SizedBox(width: 10,),
                        buildCategoryCard(
                            image: 'assets/images/entertaiment.avif',
                            showedText: 'health',
                            apiText: 'health'
                        ),
                      ],
                    ),
                  ],
                ),
              )

            ]
        )
    );
  }

 Widget buildcountryContainer( {required String showedText,required apiText})
  {

    return  Expanded(
      child: InkWell(
        splashColor: Colors.blue[900],
        onTap: ()
        {

          setState(() {
            countryName=apiText;
            countrySelected=!countrySelected;
          });
          futureScreen();
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(color:Colors.grey)
          ),

          child: Center(child: Text(showedText,style: TextStyle(color: Colors.red[700],fontSize: 15),)),
        ),
      ),
    );

  }

  Widget buildCategoryCard({required String showedText,required String image,required String apiText})
  {
    return InkWell(
      splashColor: Colors.blue[900],
      onTap: ()
      {
        setState(() {
          categoryName=apiText;
          categorySelected=!categorySelected;
        });
        futureScreen();
      },
      child: Container(
        width: 170,
        height: 95,
        decoration: BoxDecoration
          (
          border: Border.all(color: Colors.grey,width: 2)

          ),
        child: Center(child: Text(showedText, style: TextStyle(color: Colors.red[900] ,fontSize: 22,fontWeight: FontWeight.bold),)),

      ),
    );
  }
  futureScreen()
  {
    if(countrySelected==true && categorySelected==true)
      {
        countrySelected=false;
        categorySelected=false;
        Navigator.push(context, MaterialPageRoute(builder: (context) => Categorypage(country: countryName,category: categoryName,),));
      }
  }
}

