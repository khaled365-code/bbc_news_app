import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';






class Splashscreen extends StatefulWidget {

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {





  @override
  void initState() {
    super.initState();
    timeDelay();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[900],
        appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.red[900],
          ),

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 290,horizontal: 60),
        child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                 width: 30,
                  height: 35,
                  color: Colors.grey[200],
                  child: Center(child: Text('B',style: TextStyle(color: Colors.red[700],fontSize: 30,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 30,
                  height: 35,
                  color: Colors.grey[200],
                  child: Center(child: Text('B',style: TextStyle(color: Colors.red[700],fontSize: 30,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(width: 10,),
                Container(
                  width: 30,
                  height: 35,
                  color: Colors.grey[200],
                  child: Center(child: Text('C',style: TextStyle(color: Colors.red[700],fontSize: 30,fontWeight: FontWeight.bold),)),
                ),
                SizedBox(width: 10,),
                Text('NEWS',style: TextStyle(fontSize: 30,color: Colors.white),)

              ],
            ),
      ),
    );

  }

  void timeDelay()
  {
     Future.delayed(const Duration(seconds: 20),(){
       Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen()));
    });

  }
}


