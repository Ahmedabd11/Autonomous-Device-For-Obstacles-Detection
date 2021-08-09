import 'package:autonomous_device/HomeScreen.dart';
import 'package:flutter/material.dart';
class MyApp extends StatelessWidget{

  final myController = TextEditingController();
  @override
  Widget build(BuildContext context){
    Color hexToColor(String code) {
      return new Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
    }
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Material(
            child: new Container (
                padding: const EdgeInsets.all(30.0),
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
                child: new Container(
                  child: new Center(
                      child: new Column(
                          children : [
                            new Padding(padding: EdgeInsets.only(top: 14.0)),
                            new Text('Put your IP Address here',
                              style: new TextStyle(color: Colors.amber, fontSize: 25.0),),
                            new Padding(padding: EdgeInsets.only(top: 50.0)),
                            new TextFormField(
                              controller: myController,
                              decoration: new InputDecoration(

                                labelText: "Enter Ip Address",labelStyle: TextStyle(color: Colors.amber),
                                fillColor: Colors.white,
                                border: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(25.0),
                                  borderSide: new BorderSide(
                                  ),
                                ),
                                //fillColor: Colors.green
                              ),
                              keyboardType: TextInputType.emailAddress,
                              style: new TextStyle(
                                color: Colors.amber,
                                fontFamily: "Poppins",
                              ),
                            ),
                            new Padding(padding: EdgeInsets.only(top: 100.0)),
                            new  FlatButton(
                              child: Text('See the live Streaming', style: TextStyle(fontSize: 10.0),),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(18.0)),
                              color: Colors.green,
                              textColor: Colors.white,
                              onPressed: () {
                                if(myController.text.length!=0)
                                  {
                                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Home(text:myController.text)));
                                  }
                                else
                                  {
                                    return null;
                                  }

                              },
                            ),

                          ]
                      )
                  ),
                )

            )
        )
    );
  }
}