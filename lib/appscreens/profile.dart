import 'package:JeddahFriends/appscreens/change_password.dart';
import 'package:JeddahFriends/appscreens/personal_info.dart';
import 'package:JeddahFriends/my_initiative.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../main.dart';
import 'contact_us.dart';



class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 224, 224, 1),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 120.0), 
        child: AppBar(
          backgroundColor: Color.fromRGBO(85, 177, 200, 1),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(55))),
          actions: <Widget>[
            Container(
              child: SafeArea(
                minimum: EdgeInsets.fromLTRB(0, 25, 30, 0),
                child: CircleAvatar(
                      backgroundColor: Colors.white,
                     radius: 20,
                    ),
              ),
            ),
          ],
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
                size: 40.0,
              ),
              onPressed: () {
                setState(() {
                  print('logout');
                });
              },
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top:30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
              Center(
                child: Text('معاذ عبدالرحمن أحمد',textAlign: TextAlign.center,style: TextStyle(
                                    color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold)),
              ),
            ]),
          ),
          bottom: PreferredSize(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                      Text(' 12345 ',textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.black, fontSize: 16.0)),
                      Text(':الرقم التطوعي',textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)),
                    ]),
                  ],
                ),
              ),
              preferredSize: null 
              ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 400,
              color: Colors.white,
              child: ListView(
                children: ListTile.divideTiles(
                  context: context,
                  tiles: [
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: ListTile(
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                               Icon(
                          Icons.list,
                          color: Color.fromRGBO(126, 126, 126, 1),
                          size: 45.0,
                        ),
                        Padding(
                             padding: const EdgeInsets.only(right:15.0, top: 5),
                             child: Text('مبادراتي',textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.bold)),),
                            ]),
                        
                        onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => MyInitiatives()));
                          
                        },
                      ),
                    ),      
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: ListTile(
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                               Icon(
                          Icons.create,
                          color: Color.fromRGBO(126, 126, 126, 1),
                          size: 45.0,
                        ),
                        Padding(
                             padding: const EdgeInsets.only(right:15.0, top: 5),
                              child: Text('تحديث البيانات',textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.bold)),),
                            ]),
                        
                        onTap: () {
                          print('تعديل البيانات');
                               Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PersonalInfo()));
                        },
                      ),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: ListTile(
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                            Icon(
                          Icons.vpn_key,
                          color: Color.fromRGBO(126, 126, 126, 1),
                          size: 45.0,
                        ),
                             Padding(
                             padding: const EdgeInsets.only(right:15.0, top: 5),
                              child: Text('تغيير كلمة المرور',textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.bold)),),
                            ]),
                        
                        onTap: () {
                          print('تغيير كلمة المرور');
                               Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ChangePassword()));
                        },
                      ),
                    )
                  ],
                ).toList(),
              )),
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
           
                                      break;
                                                     
                                      default:
                                      
          }
        },
      ),
    );
  }
}