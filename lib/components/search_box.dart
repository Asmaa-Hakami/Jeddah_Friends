import 'package:flutter/material.dart';


class SearchBox extends StatelessWidget {
  const SearchBox({
    Key key,
    this.onChanged,
  }) : super(key: key);

  final ValueChanged onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.symmetric(
        horizontal: 20.0 / 4,
        vertical: 1.0 / 4, // 5 top and bottom
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextField(
        textAlign: TextAlign.right,
        onChanged: onChanged,
        style: TextStyle(color: Colors.grey),
        decoration: InputDecoration(
          
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          icon: Icon(Icons.search),
          hintText: 'البحث عن مبادرة',
          hintStyle: TextStyle(color: Colors.grey ), 
        ),
      ),
    );
  }
}