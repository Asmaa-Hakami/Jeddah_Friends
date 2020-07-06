import 'package:flutter/material.dart';

class NavigationBar extends StatefulWidget {
  @override
  _NavigationBar createState() => _NavigationBar();
}

class _NavigationBar extends State<NavigationBar> {

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
            icon: Icon(Icons.lightbulb_outline),
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