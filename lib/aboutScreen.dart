import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(

        body:
        SingleChildScrollView(

          child: Container(
            child: Column(
              children: [
                new Padding(padding: EdgeInsets.only(top: 10.0)),
                Container(
                  child:  PhotoView(
                    imageProvider: AssetImage("images/Capture.PNG"),
                  ),
                  height: 600,
                  width: 370,
                ),
                new Padding(padding: EdgeInsets.only(top: 105.0)),
                new Padding(padding: EdgeInsets.only(bottom: 5.0)),
                Container(
                    child: Text('Powered by semaphores',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.red),)
                )
              ],
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(0, 10,1, 1.0),
                  Color.fromRGBO(40,40,0, 1.0),

                ],
              ),
            ),
          ),
        ),


      ),
    );
  }
}

