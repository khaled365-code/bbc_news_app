import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../widgets/search_container.dart';
import 'keyword_search_screen.dart';
import 'menu_screen.dart';





class Searchscreen extends StatelessWidget {

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
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              )),
        ),
        centerTitle: true,
        title: Text(
          'Search',
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 70,
                  width: double.infinity,
                  color: Colors.red[900],
                  child:Padding(
                    padding: const EdgeInsets.only(left: 20,right:20,top: 5),
                    child: TextField(
                      style: TextStyle(color: Colors.white,fontSize: 20),
                      onSubmitted: (value)
                      {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Keywordsearch(appbarText:value ),));
                      },
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search,color: Colors.white,size: 25),
                        hintText: 'Search topics',
                        hintStyle: TextStyle(color: Colors.white,fontSize: 20),
                        fillColor: Colors.white,
                        contentPadding: EdgeInsetsDirectional.symmetric(vertical: 10),
                        border: OutlineInputBorder(

                        )
                      ),
                    ),
                  ),


            ),
            Container(
              margin: EdgeInsetsDirectional.only(top: 50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 15),
                    child: Text('More Topics',style: TextStyle(color: Colors.grey[700],fontSize: 20,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 15,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,right: 15),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Searchcontainer(
                                text: 'World',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Asia',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Australia',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Europe',
                              )


                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Searchcontainer(
                                text: 'Middle East',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Latin America',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Uk',
                              ),
                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Searchcontainer(
                                text: 'US & Canada',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Cooking',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Business',
                              ),


                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Searchcontainer(
                                text: 'Tech',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Science',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Health',
                              ),



                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Searchcontainer(
                                text: 'Entertainment',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Stories',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Sport',
                              ),




                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                            children: [
                              Searchcontainer(
                                text: 'Cricket',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Tennis',
                              ),
                              SizedBox(width: 8,),
                              Searchcontainer(
                                text: 'Golf',
                              )


                            ],
                          ),
                          SizedBox(height: 15,),
                          Row(
                      children: [
                        Searchcontainer(
                          text: 'Athletics',
                        ),
                        SizedBox(width: 8,),
                        Searchcontainer(
                          text: 'Cycling',
                        ),



                      ],
                    ),]),),),]))],),
      ),
    );




  }

}


