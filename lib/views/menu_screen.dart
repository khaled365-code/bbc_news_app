import 'package:flutter/material.dart';
import 'package:flutter/services.dart';





class Menuscreen extends StatelessWidget
{
  String? menuText;
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.red[900],
        elevation: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.red[900],
        ),
        title: Text('Menu',style: TextStyle(color: Colors.white,fontSize: 20),),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
                onTap: ()
                {
                  Navigator.pop(context);
                },
                child: Icon(Icons.close,size: 30,)),
          )
        ],
      ),
      body: Column(
        children: [
          buildmenuContainer(text: 'Settings'),
          buildmenuContainer(text: 'Privacy settings / Do not sell my info'),
          buildmenuContainer(text: 'App information'),
          buildmenuContainer(text: 'Other BBC apps'),

        ],
      )
    );

  }

  Container buildmenuContainer({required text}) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 20),
            child: Text(text,style: TextStyle(color: Colors.grey[700],fontSize: 20),),
          ),
          SizedBox(height: 10,),
          Divider(color: Colors.grey[300],indent: 10,endIndent: 10,thickness: 2,)
        ],
      ),
    );
  }




}