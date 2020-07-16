
import 'dart:ui';

import 'package:JeddahFriends/covid19.dart';
import 'package:JeddahFriends/hope.dart';
import 'package:flutter/material.dart';


class all extends StatelessWidget {
  @override
  Widget build(BuildContext context) {      
      /*
      child: Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {}),
          CategoryList(),
          */

      return Container(
        
        child: Center(
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
               Padding(
                  padding: const EdgeInsets.only(top: 15.0),),
              new RaisedButton(
                    elevation: 0.0,
                    shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(20.0)),
                        
                    //padding: EdgeInsets.fromWindowPadding( padding: 3.0, devicePixelRatio: 9.0),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
                    
                    onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => covid19()));
                    },
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,

                     children: <Widget>[
                       
                    // Container(
                      //  child: new Row(
                      //    crossAxisAlignment: CrossAxisAlignment.start,                        
                           //children: [
                          //   Row(
                            // crossAxisAlignment: CrossAxisAlignment.start, 
                             //mainAxisAlignment: MainAxisAlignment.start,
                          //   children: <Widget>[
                            new Image.asset(
                              'assets/images/covid19.jpg',
                              height: 50.0,
                              width: 50.0,
                              fit: BoxFit.cover,
                                 //alignment: Alignment.centerRight,
                                 
                                 

                            ),
                            
                    // ],
                    //),
                        
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

          //###############################
          new RaisedButton(
                    elevation: 0.0,
                    shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(20.0)),
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 7.0),
                    onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => hope()));
                    },
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                     children: <Widget>[
                            new Image.asset(
                              'assets/images/hope.jpg',
                              height: 50.0,
                              width: 50.0,
                              fit: BoxFit.cover,
                            ),
                        
                         Padding(
                            padding: EdgeInsets.only(left: 78.0, right: 78.0),
                            child: new Text(
                              "وطنك أملك",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                                                              textAlign: TextAlign.left,
                            )),
                              Text(
                              "منتهي",
                            style: TextStyle(fontSize: 12.0, color: Color(0XFFFF40D0D)),
                            textAlign: TextAlign.left,
                            ),
                      ],
                    ),
                    textColor: Color(0XFF241332),
                    color: Colors.white),
                     Padding(
                  
                  padding: const EdgeInsets.only(
                      left: 0.0, right: 0.0, top: 10.0, bottom: 0.0)),


                    //#############################
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
                              'assets/images/handbyhand.png',
                              height: 50.0,
                              width: 50.0,
                              fit: BoxFit.cover,
                            ),
                        
                         Padding(
                            padding: EdgeInsets.only(left: 69.0, right: 69.0),
                            child: new Text(
                              "يدًا بيد نرتقي",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold),
                                                              textAlign: TextAlign.left,
                            )),
                              Text(
                              "منتهي",
                            style: TextStyle(fontSize: 12.0, color: Color(0XFFFF40D0D)),
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
        

    );

  }
}