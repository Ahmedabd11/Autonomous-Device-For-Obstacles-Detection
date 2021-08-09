import 'package:autonomous_device/Ipcode.dart';
import 'package:autonomous_device/Ipscreen.dart';
import 'package:autonomous_device/aboutScreen.dart';
import 'package:flutter/material.dart';
int _selectedIndex = 0;
class botnavi extends StatefulWidget {
  @override
  _botnaviState createState() => _botnaviState();
}

class _botnaviState extends State<botnavi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_alert_sharp),
        backgroundColor: Colors.amber,
        centerTitle: true,
        title: Text('Autonomous Device',style: TextStyle(
          fontStyle: FontStyle.italic,fontWeight: FontWeight.bold,
        ),),
      ),
      body:
        new IndexedStack(
          index: _selectedIndex,
          children: <Widget>[
            new Ipadd(),
            new MyApp(),
            new About(),
          ],

        ),
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.amber,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplay_outlined),
            label: 'Streaming',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'About us',
          ),
        ],
        currentIndex: _selectedIndex, //New
        onTap: _onItemTapped,
      ),


    );
  }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

