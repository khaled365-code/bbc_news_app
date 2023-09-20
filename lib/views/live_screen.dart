import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';






class Livescreen extends StatelessWidget {  
  
  @override
  Widget build(BuildContext context)
  {
   return Scaffold(
     appBar: AppBar(
       automaticallyImplyLeading: false,
       backgroundColor: Colors.black,
       systemOverlayStyle: SystemUiOverlayStyle(
         statusBarColor: Colors.black,
       ),
       actions: [
         Padding(
           padding: const EdgeInsets.only(right: 15),
           child: InkWell(
               onTap: ()
               {
                 Navigator.pop(context);
               },
               child: Icon(Icons.close,size: 30,)),
         )
       ],
     ),
     backgroundColor: Colors.black,
     body: Column(
       crossAxisAlignment: CrossAxisAlignment.start,
         children:
         [
           Stack(
               alignment: Alignment.bottomLeft,
               children:
               [
                 Container(
                     width: double.infinity,
                     height: 200,
                     decoration: BoxDecoration(
                       image: DecorationImage(image: NetworkImage('https://i.ytimg.com/vi/jKerjyoqoqU/maxresdefault.jpg'),fit: BoxFit.cover),

                     ),
                   ),

                 Padding(
                   padding: const EdgeInsets.only(left: 10,bottom: 10),
                   child: InkWell(
                       onTap: ()
                       {
                         _launchUrl();
                       },
                       child: Icon(Icons.volume_up,color: Colors.white,size: 40,)),
                 )
               ],

             ),

           SizedBox(height: 20,),
           Padding(
             padding: const EdgeInsets.only(left: 12),
             child: Text('BBC World Service',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
           ),
           SizedBox(height: 2,),
           Padding(
             padding: const EdgeInsets.only(left: 15),
             child: Text('international news, analysis and features from the BBC World Service - bringing you expertise and insight from our global network of correspondents.',maxLines: 5,style: TextStyle(color: Colors.white,fontSize: 20),),
           ),


         ],
       ),


   );
  }
  Future<void> _launchUrl() async
  {
    final Uri _url = Uri.parse('https://youtu.be/9Auq9mYxFEE');
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
