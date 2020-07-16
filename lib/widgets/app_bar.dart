
import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget{
  @override
  _CustomAppBarState createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return 
        AppBar(
          backgroundColor: Color.fromRGBO(85, 177, 200, 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55))),
        actions: <Widget>[
            Container(
              child: 
              SafeArea(
               minimum: EdgeInsets.fromLTRB(0, 25,20 , 0),
            child: 
               CircleAvatar(
                 backgroundColor: Colors.white,
                   radius: 20,
                ),
              ),
            ),
          ],   
          title: 
            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text('معاذ عبدالرحمن أحمد',textAlign: TextAlign.center,
                  style: TextStyle(
                                      color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          centerTitle: true,
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[          
                      Text(' 12345 ',
                         style: TextStyle(color: Colors.black, fontSize: 16.0)),
                      Text(':الرقم التطوعي',
                          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)),
                    ]),
                  ],
                ),
              ),
              preferredSize: null),
        );

  }
}