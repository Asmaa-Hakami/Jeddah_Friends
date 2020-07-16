
import 'dart:ui';

import 'package:JeddahFriends/covid_register.dart';
import 'package:flutter/material.dart';

import 'appscreens/contact_us.dart';
import 'appscreens/profile.dart';
import 'main.dart';

class covid19 extends StatefulWidget {
  @override
  _covid19 createState() => _covid19();
}
class _covid19 extends State<covid19> {
  int _currentIndex = 0;
final tabs = [
Center(child: Text('حسابي')),
Center(child: Text('اتصل بنا')),
Center(child: Text('المبادرات')),

];
  @override
  Widget build(BuildContext context) {      
      /*
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {}),
          CategoryList(),
          */
          return Scaffold(

      appBar: null,
      backgroundColor: Colors.white.withOpacity(0.9),
      body:
         //Column(
        //children: <Widget>[

         Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
               Padding(
                  padding: const EdgeInsets.only(top: 50.0),),

              new ClipRRect(
                    //elevation: 0.0,
                      borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * .09,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
                    
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
                            padding: EdgeInsets.only(left: 55.0, right: 30.0),

                            child: new Text(
                              "مواجهة أزمة كورونا",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                                                              textAlign: TextAlign.left,
                            )),
                              Text(
                              "متاح",
                            style: TextStyle(fontSize: 12.0, color: Color(0XFFF2D8848), fontWeight: FontWeight.bold),
                            textAlign: TextAlign.left,
                            ),
                      ],
                    ),
                        ),
              ),
                   // textColor: Color(0XFF241332),
                    //color: Colors.white),

                Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 15.0, bottom: 0.0)),

                  ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    height: MediaQuery.of(context).size.height * .57,
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 280,
                                height: 25,
                                child: Text(
                                  "عن المبادرة:",
                                  style: TextStyle(color: Color(0XFF55B1C8)),                           
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              
                              SizedBox(
                                width: 280,
                                height: 70,
                                child: Text(
                                  'مبادرة من أهل جدة لمواجهة أزمة كورونا لنكون\nمتطوعين ومساهمين في خدمة المناطق\nالمجاورة لسكننا',
                                  style: TextStyle(color: Colors.black),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 280,
                                height: 25,
                                child: Text(
                                  "تاريخ بداية المبادرة:",
                                  //controller: notestext,
                                  style: TextStyle(color: Color(0XFF55B1C8)),                           
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          

                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                           
                              SizedBox(
                                width: 280,
                                height: 50,
                                child: Text(
                                  "يوم: 2 أبريل 2020م الموافق 9 شعبان 1441هـ",
                                  //controller: notestext,
                                  style: TextStyle(color: Colors.black),                           
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),

                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 280,
                                height: 25,
                                child: Text(
                                  "الوقت:",
                                  //controller: notestext,
                                  style: TextStyle(color: Color(0XFF55B1C8)),                           
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),


                            Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 280,
                                height: 40,
                                child: Text(
                                  "من: 07:00 صباحًا\nإلى: 02:00 مساءً",
                                  //controller: notestext,
                                  style: TextStyle(color: Colors.black),                           
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),

                                Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 280,
                                height: 25,
                                child: Text(
                                  "الموقع:",
                                  //controller: notestext,
                                  style: TextStyle(color: Color(0XFF55B1C8)),                           
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),

                              Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 280,
                                //height: 40,
                                child: Text(
                                  "كافة أحياء جدة ",
                                  //controller: notestext,
                                  style: TextStyle(color: Colors.black),                           
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                 Padding(
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 17.0, bottom: 0.0)),
                new RaisedButton(
                    elevation: 0.0,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(35.0)),
                        
                    padding: const EdgeInsets.symmetric(horizontal: 92.0, vertical: 12.0),
                    
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CovidRegister()));
                    },
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                     children: <Widget>[
                         Padding(
                            padding: EdgeInsets.only(left: 47.0, right: 47.0),
                            child: new Text(
                              "تسجيل",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold, color: Colors.white),
                            )),
                      ],
                    ),
                    color: Color(0XFF25A1C0)),
                        

            ],
          ),
        ),
       // ],
     // ), 
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