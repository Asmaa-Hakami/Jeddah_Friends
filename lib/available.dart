
import 'dart:ui';

import 'package:JeddahFriends/covid19.dart';
import 'package:flutter/material.dart';

import 'appscreens/contact_us.dart';
import 'appscreens/profile.dart';
import 'components/category_list.dart';
import 'components/search_box.dart';
import 'main.dart';

class available extends StatefulWidget {
  @override
  _available createState() => _available();
}
class _available extends State<available> {
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

         Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Padding(
                  padding: const EdgeInsets.only(top: 15.0),),
              new RaisedButton(
                    elevation: 0.0,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                        
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
                    
                    onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => covid19()));                    },
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                     children: <Widget>[
                            new Image.asset(
                              'assets/images/covid19.jpg',
                              height: 50.0,
                              width: 50.0,
                              fit: BoxFit.cover,
                            ),
                        
                         Padding(
                            padding: EdgeInsets.only(left: 53.0, right: 53.0),

                            child: new Text(
                              "مواجهة أزمة كورونا",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                                                              textAlign: TextAlign.left,

                            )),
                              Text(
                              "متاح",
                            style: TextStyle(fontSize: 12.0, color: Color(0XFFF2D8848)),
                            textAlign: TextAlign.left,
                            ),
                      ],
                    ),
                    textColor: Color(0XFF241332),
                    color: Colors.white),
                Padding(
                  
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 10.0, bottom: 0.0)),

//###################################################
                    new RaisedButton(
                    elevation: 0.0,
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
                    onPressed: () {
                      //Navigator.of(context).pushReplacementNamed(VIDEO_SPALSH);
                    },
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                     children: <Widget>[
                            new Image.asset(
                              'assets/images/940.jpg',
                              height: 50.0,
                              width: 50.0,
                              fit: BoxFit.cover,
                            ),
                        
                         Padding(
                            padding: EdgeInsets.only(left: 82.0, right: 82.0),
                            child: new Text(
                              "عيون جدة",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                                                              textAlign: TextAlign.left,
                            )),
                              Text(
                              "متاح",
                            style: TextStyle(fontSize: 12.0, color: Color(0XFFF2D8848)),
                            textAlign: TextAlign.left,
                            ),
                      ],
                    ),
                    textColor: Color(0XFF241332),
                    color: Colors.white),
                     Padding(
                  
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 10.0, bottom: 0.0)), 
                
            ],
          ),
        ),
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
      );
  }
}