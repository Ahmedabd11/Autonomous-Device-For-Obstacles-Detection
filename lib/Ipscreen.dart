
import 'dart:ui';

import 'package:autonomous_device/Ipcode.dart';
import 'package:autonomous_device/aboutScreen.dart';
import 'package:autonomous_device/pdfview.dart';
import 'package:flutter/material.dart';

class Ipadd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(

          body: SingleChildScrollView(
            child: Container(
              child: Center(
                child: Column(
                  children: [
                    new Padding(padding: EdgeInsets.only(top: 25.0)),
                    Container(
                      width: 350,
                      height: 180,
                      padding: new EdgeInsets.all(13.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.amber,
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.assignment_outlined, size: 65),
                              title: Text(
                                  'Documentaion',
                                  style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),
                              ),

                              subtitle: Text(
                                  'Complete Documentaion of Autonomous Device for Obstacle Detection',
                                  style: TextStyle(fontSize: 14.0)
                              ),
                            ),
                            new Padding(padding: EdgeInsets.only(top: 10.0)),
                                new RaisedButton(
                                  child: const Text('See Documentaion'),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0)),
                                  color: Colors.green,
                                  textColor: Colors.white,
                                  onPressed: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyHomePage(title: 'Documentation')));
                                  },
                                ),
                          ],
                        ),
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 5.0)),
                    Container(
                      width: 350,
                      height: 180,
                      padding: new EdgeInsets.all(13.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.amber,
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.airplay_outlined, size: 65),
                              title: Text(
                                'Streaming',
                                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),
                              ),

                              subtitle: Text(
                                  'Autonomous Device Camera Streaming for Object Recognition ',
                                  style: TextStyle(fontSize: 14.0)
                              ),
                            ),
                            new Padding(padding: EdgeInsets.only(top: 10.0)),
                            new RaisedButton(
                              child: const Text('See live Streaming'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              color: Colors.green,
                              textColor: Colors.white,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => MyApp()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 5.0)),
                    Container(
                      width: 350,
                      height: 180,
                      padding: new EdgeInsets.all(13.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.amber,
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            const ListTile(
                              leading: Icon(Icons.account_circle_rounded, size: 65),
                              title: Text(
                                'About us',
                                style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.black),
                              ),

                              subtitle: Text(
                                  'Group Member Details of Autonomous Device for Obstacle Detection',
                                  style: TextStyle(fontSize: 14.0)
                              ),
                            ),
                            new Padding(padding: EdgeInsets.only(top: 10.0)),
                            new RaisedButton(
                              child: const Text('See Member Details'),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0)),
                              color: Colors.green,
                              textColor: Colors.white,
                              onPressed: () {
                                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => About()));
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 25.0)),
                    Container(
                      child: Text('Powered by semaphores',style: TextStyle(fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,color: Colors.red),)
                    ),
                    new Padding(padding: EdgeInsets.only(top: 25.0)),
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
          )


      ),
    );


  }
}
