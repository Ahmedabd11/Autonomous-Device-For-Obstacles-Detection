import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
class Home extends StatelessWidget {
  final String text;

  // receive data as a parameter
  Home({Key key, @required this.text}) : super(key: key);

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
                    height: MediaQuery.of(context).copyWith().size.height / 1.3,
                    child: WebView(
                      initialUrl: "http://"+text+":5000/",
                      javascriptMode: JavascriptMode.unrestricted,
                    ),
                  ),
                  new Padding(padding: EdgeInsets.only(top: 5.0)),
                  new RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0)),
                    textColor: Colors.white,
                    color: Colors.redAccent,
                    child: Text('Back to IP Address Screen'),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  new Padding(padding: EdgeInsets.only(top: 5.0)),
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
