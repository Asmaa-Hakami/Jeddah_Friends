//import 'dart:ui';

import 'package:JeddahFriends/start_page.dart';
import 'package:flutter/material.dart';
import 'package:JeddahFriends/components/all.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'appscreens/contact_us.dart';
import 'appscreens/profile.dart';
import 'components/category_list.dart';
import 'components/search_box.dart';



void main() {
    runApp(new MaterialApp(
   debugShowCheckedModeBanner: false,
   localizationsDelegates: [
    GlobalMaterialLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ],
  supportedLocales:[
    Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales
   ],
   locale: Locale("ar", "AE"), // OR Locale('ar', 'AE') OR Other RTL locales,,
       home:Directionality(
     
    textDirection: TextDirection.ltr,
    child:StartPage()),),);
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: null,
      backgroundColor: Colors.white.withOpacity(0.9),
      body:
      Column(
        children: <Widget>[
           Padding(
            padding: EdgeInsets.only(top: 35.0),),          
            SearchBox(onChanged: (value) {}),
          CategoryList(),
          all(),  
        ],
      ), 
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
      BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Color.fromRGBO(126, 126, 126, 1),
              size: 35.0,
            ),
            title: new Text('المبادرات',
                style: TextStyle(
                    color: Color.fromRGBO(126, 126, 126, 1), fontSize: 20.0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_call,
              color: Color.fromRGBO(126, 126, 126, 1),
              size: 35.0,
            ),
            title: Text('اتصل بنا',
                style: TextStyle(
                    color: Color.fromRGBO(126, 126, 126, 1), fontSize: 20.0)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color.fromRGBO(126, 126, 126, 1),
              size: 35.0,
            ),
            title: Text('حسابي',
                style: TextStyle(
                    color: Color.fromRGBO(126, 126, 126, 1), fontSize: 20.0)),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
            switch(_currentIndex)
          {
          case 0:
          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()));
                                      break;
          case 1:
                       Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContactUs()));
                                      break;  
          case 2: 
                    Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile())); 
                                      break;
                                                     
                                      default:
                                      
          }
        },
      ),
      /*
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
              switch(_currentIndex)
          {
          case 0:
          Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()));
                                      break;
          case 1:
                       Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContactUs()));
                                      break;  
          case 2: 
                                                     
                                      default:
                                      
          }
        },
      ),
      */

      
      
      );
   
  }

  
}

