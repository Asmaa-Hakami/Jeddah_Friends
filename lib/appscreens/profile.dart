import 'package:flutter/material.dart';



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
                     // minRadius: 20,
                   //  maxRadius: 20,
                     radius: 20,
                    ),
              ),
            ),
          ],
          leading: IconButton(
            icon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Icon(
                Icons.exit_to_app,
                color: Colors.grey,
                size: 40.0,
              ),
            ),
            onPressed: () {
              setState(() {
                print('logout');
              });
            },
          ),
          title: Padding(
            padding: EdgeInsets.all(0),
            child: Column(children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 0),
                child: Center(child: Text('أحمدمعاذ عبدالرحمن',textAlign: TextAlign.center,style: TextStyle(
                                    color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.bold))),
              ),
            ]),
          ),
          bottom: PreferredSize(
              child: Padding(
                padding: EdgeInsets.fromLTRB(120, 0, 120, 20),
                child: Row(children: <Widget>[
                  Center(
                    child: Text(' 12345 ',textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.black, fontSize: 16.0)),
                  ),
                  Center(
                    child: Text(':الرقم التطوعي',textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.bold)),
                  ),
                ]),
              ),
              preferredSize: null 
              ),
        ),
      ),
      body: Container(
          margin: EdgeInsets.fromLTRB(0, 25.0, 0, 25.0),
          color: Colors.white,
          child: Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
              child: ListView(
                children: ListTile.divideTiles(
                  context: context,
                  tiles: [
                    Padding(
                      padding: EdgeInsets.fromLTRB(10,10,0,10),
                      child: ListTile(
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('مبادراتي',textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.bold)),
                            ]),
                        trailing: Icon(
                          Icons.list,
                          color: Color.fromRGBO(126, 126, 126, 1),
                          size: 45.0,
                        ),
                        onTap: () {
                          print('مبادراتي');
                        },
                      ),
                    ),      
                    Padding(
                      padding: EdgeInsets.fromLTRB(10,10,0,10),
                      child: ListTile(
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('تحديث البيانات',textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.bold)),
                            ]),
                        trailing: Icon(
                          Icons.create,
                          color: Color.fromRGBO(126, 126, 126, 1),
                          size: 45.0,
                        ),
                        onTap: () {
                          print('تعديل البيانات');
                        },
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10,10,0,10),
                      child: ListTile(
                        title: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text('تغيير كلمة المرور',textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 23.0, fontWeight: FontWeight.bold)),
                            ]),
                        trailing: Icon(
                          Icons.vpn_key,
                          color: Color.fromRGBO(126, 126, 126, 1),
                          size: 45.0,
                        ),
                        onTap: () {
                          print('تغيير كلمة المرور');
                        },
                      ),
                    )
                  ],
                ).toList(),
              ))),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Color.fromRGBO(126, 126, 126, 1),
              size: 40.0,
            ),
            title: Text('حسابي',
                style: TextStyle(
                    color: Color.fromRGBO(126, 126, 126, 1), fontSize: 20.0,fontWeight: FontWeight.bold)),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_call,
              color: Color.fromRGBO(126, 126, 126, 1),
              size: 40.0,
            ),
            title: Text('اتصل بنا',
                style: TextStyle(
                    color: Color.fromRGBO(126, 126, 126, 1), fontSize: 20.0, fontWeight: FontWeight.bold)),
          ),
         
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
              color: Color.fromRGBO(126, 126, 126, 1),
              size: 40.0,
            ),
            title: new Text('المبادرات',
                style: TextStyle(
                    color: Color.fromRGBO(126, 126, 126, 1), fontSize: 20.0, fontWeight: FontWeight.bold)),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

