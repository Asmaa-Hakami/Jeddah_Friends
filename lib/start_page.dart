import 'dart:ui';
import 'package:JeddahFriends/loginnew.dart';
import 'package:JeddahFriends/signup.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'main.dart';


class StartPage extends StatefulWidget {

  @override
  _StartPage createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: 
          Stack(
          fit: StackFit.expand,  
          children: <Widget>[
                      
            ConstrainedBox(     
              constraints: const BoxConstraints.expand(),
              child: Container(
                
                height: MediaQuery
                    .of(context)
                    .size
                    .height,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,

                decoration: new BoxDecoration(
                    shape: BoxShape.rectangle,
                    image: new DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage('assets/images/start1.png'), 
                    )
                ),),
            ), //ConstrainedBox
            Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  child: infoCard(context, "Jeddah Friends"),
                ),
              ],), 
              
          // Column(
              
            //  mainAxisAlignment: MainAxisAlignment.start,
              
            //  children: <Widget>[
                Row(
                  
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[

                      Container(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 530.0),
                        child: new FlatButton(
            onPressed: () {
            // ignore: deprecated_member_use
            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage()));
            },
            
            child: new Text("تخطي",  style: TextStyle(decoration: TextDecoration.underline, color: Colors.black),
            textAlign: TextAlign.right,
          ),
        ),
                      ),
                            ),
                  ],
                ),
            //  ],
            //),
            Padding(
              padding: const EdgeInsets.only(top: 500.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                children: [
                        FlatButton(
                        //elevation: 0.0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(35.0)),
                            
                        padding: const EdgeInsets.symmetric(horizontal: 85.0, vertical: 12.0),
                        
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                        },
                        child: new Row(
                          mainAxisSize: MainAxisSize.min,
                         children: <Widget>[
                             Padding(
                                padding: EdgeInsets.only(left: 2.0, right: 2.0),
                                child: new Text(
                                  "تسجيل الدخول",
                                  style: TextStyle(
                                      fontSize: 15.0, fontWeight: FontWeight.bold, color: Color(0XFFF53399A)),
                                )),
                                  
                          BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                          ),
                        
                          ],
                        ),
                                color: Colors.white.withOpacity(0.6),

                       ),
                   
                      ],
              ),
            ),
                 Padding(
              padding: const EdgeInsets.only(top: 600.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,

                       children: [
                         FlatButton(
                          //elevation: 0.0,
                          shape: new RoundedRectangleBorder(
                              borderRadius: new BorderRadius.circular(35.0)),
                              
                          padding: const EdgeInsets.symmetric(horizontal: 95.0, vertical: 12.0),
                          
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Signup()));
                          },
                          child: new Row(
                            mainAxisSize: MainAxisSize.min,
                           children: <Widget>[
                               Padding(
                                  padding: EdgeInsets.only(left: 2.0, right: 2.0),
                                  child: new Text(
                                    "حساب جديد",
                                    style: TextStyle(
                                        fontSize: 15.0, fontWeight: FontWeight.bold, color: Color(0XFFF53399A)),
                                  )),
                                    
                            BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 0.5, sigmaY: 0.5),
                            ),
                          
                            ],
                          ),
                                  color: Colors.white.withOpacity(0.6),

                         ),
                       ],
                       ),
                 ),
          
            
          ]
          
                   
  //    ), //Stack
    ),
    );
  }




  Widget frostedEdged(Widget child) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(50.0),
        child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 0.0, sigmaY: 0.0),
            child: child)
            );
  }


  Widget infoCard(BuildContext context, String title) {
    return frostedEdged(Container(
      
        key: ValueKey<String>(title),
        height: MediaQuery
            .of(context)
            .size
            .height / 1.65,
        width: MediaQuery
            .of(context)
            .size
            .width / 1.3,
        color: Colors.white.withOpacity(0.6),
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: Image.asset('assets/images/logo.png'), 
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 35.0),
                 child: Text(
                  "من هم أصدقاء جدة؟",
                  style: TextStyle(fontSize: 28.0, color: Color(0XFFF53399A)),
                  textAlign: TextAlign.center,
                  ),
                ),
              Text(
                "هم أفراد من المجتمع محبين\n لمدينة جدة\n يشكلون فريق عمل تطوعي\n يعمل يداً بيد\n  من خلال برامج ومبادرات تُدعم \nمن قبل أمانة جدة",
                style: TextStyle(fontSize: 22.0, color: Color(0XFFF25A1C0)),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        )));
  }

}


