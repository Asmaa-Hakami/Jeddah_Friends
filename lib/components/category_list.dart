//import 'dart:html';

import 'package:JeddahFriends/main.dart';
import 'package:flutter/material.dart';

import '../available.dart';
import '../unavailable.dart';

// We need statefull widget because we are gonna change some state on our category
class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  // by default first item will be selected
  int selectedIndex = 0;
  List categories = ['الكل', 'متاح', 'منتهي'];
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 40.0 / 2),
      height: 28,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => GestureDetector(
          child: Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(
              left: 30.0,
              right: 10.0,
              // At end item it add extra 20 right  padding
            ),
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(
              color: index == selectedIndex
                  ? Color(0XFF25A1C0)
                  : Colors.white,
              borderRadius: BorderRadius.circular(35),
            ),
            child: Text(
              categories[index],
              style: index == selectedIndex
              ? TextStyle(fontWeight: FontWeight.bold, color: Colors.white)
              : TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
               
            ),
          ),

           onTap: () {
            setState(() {
              selectedIndex = index;
              switch (selectedIndex) {
                case 0 :
                 //Navigator.pop(context);
                 Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()));
                  break;
                case 1:
                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => available()));
                break;
                case 2: 
                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => unavailable()));
                break;
                default:
              }
                

            });
          },
        ),
      ),
      

    );
  }
}
