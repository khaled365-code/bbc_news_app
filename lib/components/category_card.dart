import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/category_page.dart';

import '../models/card_model.dart';


class Categorycard extends StatelessWidget {


  const Categorycard({required this.firstModel});


  final CategoryModel firstModel;



  @override
  Widget build(BuildContext context) {
   return InkWell(

      onTap: ()
     {
       Navigator.push(context, MaterialPageRoute(builder: (context) => Categorypage(
         category: firstModel.text,
       ),));
     },
     child: Container(
       height: double.infinity,
       width: 180,
       decoration: BoxDecoration(
         image: DecorationImage(image:AssetImage(firstModel.image),fit: BoxFit.cover
         ),
         borderRadius: BorderRadius.circular(15),
       ),
       child: Center(child: Text(firstModel.text, style: TextStyle(color: firstModel.color ,fontSize: 22,fontWeight: FontWeight.bold),)),

     ),
   );

  }
}
