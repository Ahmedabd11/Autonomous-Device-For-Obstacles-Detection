import 'dart:async';
import 'package:autonomous_device/Ipcode.dart';
import 'package:autonomous_device/Ipscreen.dart';
import 'package:autonomous_device/bottom.dart';
import 'package:flutter/material.dart';
import 'package:autonomous_device/HomeScreen.dart';
class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDelay = 5;
  @override
  void initState() {
    super.initState();
    _loadWidget();
  }

  _loadWidget() async {
    var _duration = Duration(seconds: splashDelay);
    return Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => botnavi()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:

      Container(
        child: InkWell(
          child: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 7,
                    child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Autonomous Device For Obstacle Detection ',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                  background: Paint()
                                    ..strokeWidth = 30.0
                                    ..color = Colors.amber
                                    ..style = PaintingStyle.stroke
                                    ..strokeJoin = StrokeJoin.round),
                            ),
                        SizedBox(
                          height: 100,
                        ),
                            Container(
                              padding: EdgeInsets.all(20),
                              margin: EdgeInsets.all(20),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: Border.all(
                                  color: Colors.amber,
                                  width: 2,
                                ),
                              ),
                              child:   Image.asset(
                                'images/logo1.png',
                                height: 200,
                                width: 200,
                              ),
                            ),


                          ],
                        )),

                  ),

                  Expanded(
                    child: Column(
                      children: <Widget>[
                        CircularProgressIndicator(
                          valueColor: new AlwaysStoppedAnimation<Color>(Colors.amber),
                        ),
                        Container(
                          height: 10,
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
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


    );
  }
}