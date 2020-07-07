//import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:JeddahFriends/components/body.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jeddah Friends',
      theme: ThemeData( 
      ),

      home: MyHomePage(title: 'أصدقاء جدة'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

int _currentIndex = 0;
final tabs = [
Center(child: Text('حسابي')),
Center(child: Text('اتصل بنا')),
Center(child: Text('من الميدان')),
Center(child: Text('المبادرات')),

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: null,
      backgroundColor: Colors.white.withOpacity(0.9),
      body: Body(),
      //body: Image.asset('assets/images/background.jpg'),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        iconSize: 35,
        selectedFontSize: 15,
        unselectedFontSize: 15,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('حسابي'),
            
          ),

            BottomNavigationBarItem(
            icon: Icon(Icons.call),
            title: Text('اتصل بنا'),
          ),
          
          
                    BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text('المبادرات'),
          ),
        ],
        onTap: (index){
          setState(() {
            _currentIndex = index;
          });

        },
      ),
      );
   
  }
}

