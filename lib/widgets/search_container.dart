import 'package:flutter/material.dart';
import 'package:news_app/views/keyword_search_screen.dart';



class Searchcontainer extends StatelessWidget {

  final String text;
  Searchcontainer({required this.text });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        splashColor: Colors.blue,
        onTap: ()
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => Keywordsearch(appbarText: text),));
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
              border: Border.all(color:Colors.grey)
          ),

          child: Center(child: Text(text,style: TextStyle(color: Colors.red[700],fontSize: 15),)),
        ),
      ),
    );
  }
}
