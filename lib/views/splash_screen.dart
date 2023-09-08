import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'home_page.dart';






class Splashscreen extends StatefulWidget {

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {


  bool isFull=false;



  @override
  void initState() {
    super.initState();
    timeDelay();

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[400],
        appBar: AppBar(
        backgroundColor: Colors.grey[400],
        elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.grey[400]
          ),

      ),
      body: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child:  Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(150),
                          border: Border.all(color: Colors.black,width: 2),


                        ),
                        child: const CircleAvatar(
                          radius:150,
                          backgroundImage: AssetImage('assets/images/logo.png') ,

                        ),
                      ),
                    ),
                  Center(
                    child:Container(
                        margin: const EdgeInsetsDirectional.only(top: 65,start: 30,end: 30),
                        child: const LinearProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Colors.grey,
                        )
                      ),
                  ),
              ],
        ),

    );

  }

  void timeDelay()
  {
     Future.delayed(const Duration(seconds: 30),(){

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Homescreen()));
    });

  }
}
