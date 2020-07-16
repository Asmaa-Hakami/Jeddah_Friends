
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'appscreens/contact_us.dart';
import 'appscreens/profile.dart';
import 'main.dart';

class CovidRegister extends StatefulWidget {
  @override
  _CovidRegister createState() => _CovidRegister();
}
class _CovidRegister extends State<CovidRegister> {
  int _currentIndex = 0;
final tabs = [
Center(child: Text('حسابي')),
Center(child: Text('اتصل بنا')),
Center(child: Text('المبادرات')),
];
var selected_time;
var times = ['6 صباحًا',
'7 صباحًا',
'8 صباحًا',
'9 صباحًا',
'10 صباحًا',
'11 صباحًا',
'12 مساء',
'1 مساء',
'2 مساء',
'3 مساء',
'4 مساء',
'5 مساء',
'6 مساء',
'7 مساء',
'8 مساء',
'9 مساء',
'10 مساء',
'11 مساء',
'12 صباحًا'];

  Future<List<Constraints>> dialog() async {
    // brandName.text="";
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(90),
                    topRight: Radius.circular(90),
                    bottomLeft: Radius.circular(90),
                    bottomRight: Radius.circular(90))),
            //contentPadding: EdgeInsets.only(left: 5,right: 5),
            backgroundColor: Colors.white,
            title: Center(
                child: Text(
              'تهانينا',
              style: TextStyle(fontSize: 20, color: Colors.purple[600]),
            )),
            content: Container(
              height: 140,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    //height: 10,
                    width: 250,
                  ),
                  Text("تم التسجيل في المبادرة بنجاح يمكنك رؤية المبادرة في حسابك من ايقونة مبادراتي نتمنى لك وقتًا ممتعًا ",
                      style: TextStyle(fontSize: 18, color: Colors.black), textAlign: TextAlign.center,),
                  SizedBox(height: 20.0),
                  InkWell(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Container(
                        height: 37.0,
                        width: 100,
                        child: Material(
                          borderRadius: BorderRadius.circular(15.0),
                          shadowColor: Color(0XFFF25A1C0),
                          color: Color(0XFFF25A1C0),
                          //elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CovidRegister()));
                            },
                            child: Center(
                              child: Text('تم',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ),
                          ),
                        )),
                  ),
                ],
              ),
            )));
  }
  @override
  Widget build(BuildContext context) {      

      return Scaffold(
      appBar: null,
      backgroundColor: Colors.white.withOpacity(0.9),
      body:
         Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               Padding(
                  padding: const EdgeInsets.only(top: 50.0),),
              new ClipRRect(
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 20.0, horizontal: 10.0),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 280,
                                height: 45,                                  
                                  child: Container(
                                  child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "عدد ساعات التطوع المتاحة",
                                    errorStyle: TextStyle(fontSize: 14.0),
                                    border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(35)),
                                  ),
                                  textAlign: TextAlign.center,

                                  validator: (value) {
                                 if (value.isEmpty) {
                                 return 'الرجاء تعبئة الحقل';
                                } else {
                                 return null;
                                }
                                },
                                ),
                                  ),
                              
                              ),
                            ],
                          ),

                          Padding(
                          padding: const EdgeInsets.only(top: 35.0),),
                          
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 280,
                                height: 45,                                  
                                 child: Container(
                                 decoration: BoxDecoration(
                                   border: Border.all(color: Colors.grey, width: 1.0),
                                   borderRadius: BorderRadius.circular(35),
                                 ),
                           child: DropdownButton<String>(
                            items: times.map((String dropDownStringItem) {
                              return DropdownMenuItem<String>(
                                value: dropDownStringItem,
                                child: Text(dropDownStringItem, textAlign: TextAlign.center,),
                                
                              );
                            }).toList(),
                            onChanged:(selectedTime){
                              setState(() {
                                selected_time = selectedTime;
                              },);
                            },
                            value:selected_time,
                            isExpanded: false,
                            hint: Text("               الوقت المناسب للتطوع" ),
                            //elevation: 0,
                          ),
                                 ),
                              ),
                            ],
                          ),

                           Padding(
                  padding: const EdgeInsets.only(top: 35.0),),
                          
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              
                              SizedBox(
                                width: 280,
                                height: 45,                                  
                                  child: Container(
                                  child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "أقرب متجر او معرض خضار من سكنك ",
                                    border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(35)),
                                  ),
                                  textAlign: TextAlign.center,
                                  validator: (value) {
                                 if (value.isEmpty) {
                                 return 'الرجاء تعبئة الحقل';
                                } else {
                                 return null;
                                }
                                },
                                ),
                                  ),
                              
                              ),
                            ],
                          ),
                          
                           Padding(
                  padding: const EdgeInsets.only(top: 35.0),),
                          
                           Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              
                              SizedBox(
                                width: 280,
                                height: 45,                                  
                                  child: Container(
                                  child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "رابط الموقع على خرائط قوقل",
                                    border: OutlineInputBorder(
                                       borderRadius: BorderRadius.circular(35)),
                                  ),
                                  textAlign: TextAlign.center,
                                      validator: (value) {
                                 if (value.isEmpty) {
                                 return 'الرجاء تعبئة الحقل';
                                } else {
                                 return null;
                                }
                                },
                                ),
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
                      dialog();
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