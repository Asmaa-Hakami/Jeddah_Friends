import 'package:JeddahFriends/appscreens/profile.dart';
import 'package:JeddahFriends/components/search_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'appscreens/contact_us.dart';
import 'main.dart';

class MyInitiatives extends StatefulWidget {
  @override
  _MyInitiatives createState() => _MyInitiatives();
}

class _MyInitiatives extends State<MyInitiatives> {
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
      body: 
            Column(
        children: <Widget>[
          SearchBox(onChanged: (value) {}),

          Padding(
                  padding: const EdgeInsets.only(top: 0.0),),

              new ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: MediaQuery.of(context).size.height * .1,
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 7.0),
                    
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                     children: <Widget>[
                             Icon(
                               Icons.calendar_today,
                               color: Color.fromRGBO(126, 126, 126, 1),
                               size: 35.0,
                               ),
                        
                         Padding(
                            padding: EdgeInsets.only(left: 70.0, right: 10.0),

                            child: new Text(
                              "2\nمبادرة",
                              style: TextStyle(
                                  fontSize: 15.0, fontWeight: FontWeight.bold, color: Color(0XFFF7935B2)),
                                                              textAlign: TextAlign.center,
                            )),
                               new Row(
                                mainAxisSize: MainAxisSize.min,
                                 children: [
                                Icon(
                               Icons.watch_later,
                               color: Color.fromRGBO(126, 126, 126, 1),
                               size: 35.0,
                               ),
                               Padding(
                            padding: EdgeInsets.only(left: 10.0, right: 0.0),),
                              Text(
                                "3\nساعة",
                              style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Color(0XFFF7935B2)),
                              textAlign: TextAlign.center,
                              ),
                            ],
                              ),
                      ],
                    ),
                        ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 15.0),),

              new ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .15,
                    color: Colors.white,
                    //padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),

                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                          ),
                            new Image.asset(
                              'assets/images/covid19.jpg',
                              height: 50.0,
                              width: 50.0,
                              fit: BoxFit.cover,
                            ),
                             Padding(
                            padding: EdgeInsets.only(left: 7.0, right: 0.0, top: 10.0),),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 200,
                                height: 25,
                                child: Text(
                                  "مواجهة أزمة كورونا",
                                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Color(0XFFF241332)),                           
                                  textAlign: TextAlign.right,
                                ),
                              ),
                                Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 120,
                                height: 18,
                                child: Text(
                                  "الساعات المكتسبة :",
                                  style: TextStyle(color: Color(0XFFF6A2C9D), fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text(
                                "3",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),

                                Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              
                              SizedBox(
                                width: 100,
                                height: 18,
                                child: Text(
                                  "تاريخ التسجيل : ",
                                  style: TextStyle(color: Color(0XFFF6A2C9D), fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                                   Text(
                                " 2020/06/12",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),

                              Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              
                              SizedBox(
                                width: 150,
                                height: 20,
                                child: Text(
                                  "معلومات عن المبادرة .",
                                  style: TextStyle(color: Color(0XFFFF51212), fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                            ],
                          ),
                     ],
                    ),
                     ),
                        ),

                         Padding(
                  padding: const EdgeInsets.only(top: 15.0),),

                        new ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                        child: Container(
                    width: MediaQuery.of(context).size.width * .9,
                    height: MediaQuery.of(context).size.height * .15,
                    color: Colors.white,
                    //padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),

                     child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                          ),
                            new Image.asset(
                              'assets/images/hope.jpg',
                              height: 50.0,
                              width: 50.0,
                              fit: BoxFit.cover,
                            ),
                             Padding(
                            padding: EdgeInsets.only(left: 7.0, right: 0.0, top: 10.0),),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 200,
                                height: 20,
                                child: Text(
                                  "وطنك أملك",
                                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold, color: Color(0XFFF241332)),                           
                                  textAlign: TextAlign.right,
                                ),
                              ),
                                Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              SizedBox(
                                width: 120,
                                height: 18,
                                child: Text(
                                  "الساعات المكتسبة :",
                                  style: TextStyle(color: Color(0XFFF6A2C9D), fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              Text(
                                "3",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),

                                Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              
                              SizedBox(
                                width: 100,
                                height: 18,
                                child: Text(
                                  "تاريخ التسجيل : ",
                                  style: TextStyle(color: Color(0XFFF6A2C9D), fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                                   Text(
                                " 2020/06/12",
                                style: TextStyle(color: Colors.black),
                              )
                            ],
                          ),

                              Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              
                              SizedBox(
                                width: 150,
                                height: 20,
                                child: Text(
                                  "معلومات عن المبادرة .",
                                  style: TextStyle(color: Color(0XFFFF51212), fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                            ],
                          ),
                       
      
                    // ),
                     ],
                     //),
                    ),
                        
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
      