import 'package:JeddahFriends/loginnew.dart';
import 'package:JeddahFriends/recoverypassCode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RecoveryPaasword extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<RecoveryPaasword> {
  bool date = false;

  final email = new TextEditingController();
  final password = new TextEditingController();
  String _email = '';
  String _password = '';

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
              'عذراً !',
              style: TextStyle(
                  fontSize: 28, color: Colors.red, fontWeight: FontWeight.bold),
            )),
            content: InkWell(
              onTap: () {
                Navigator.pop(
                  context,
                );
              },
              child: Container(
                height: 200,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                        "أولاً يجب أن تقوم بإدخال البريد الالكتروني الخاص بحسابك",
                        style: TextStyle(fontSize: 18, color: Colors.black)),
                    SizedBox(height: 40.0),
                    Container(
                        height: 50.0,
                        width: 200,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.red[600],
                          color: Colors.red[600],
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text('العودة',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            )));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(bottom: 50),
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height * 0.20,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.blue],
                          end: Alignment.bottomCenter,
                          begin: Alignment.topCenter),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(85))),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 20.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                                    Navigator.pop(context);
                            },
                            child: Container(
                              width: 40.0,
                              child: Image(
                                  image: AssetImage("assets/images/lefts.png")),
                            ),
                          ),
                        ],
                      ),
                      Center(
                        child: Text(
                          'استعادة كلمة المرور',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.0,
                              fontFamily: 'Tohama'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70.0),
                ClipRRect(
                  borderRadius: BorderRadius.circular(40.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    color: Colors.grey[100],
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          // Padding(
                          //   padding: EdgeInsets.symmetric(
                          //       vertical: 16.0, horizontal: 16.0),
                          //   child: Divider(),
                          // ),
                          // Padding(
                          //   padding: EdgeInsets.symmetric(
                          //       vertical: 16.0, horizontal: 16.0),
                          //   child: TextField(
                          //     decoration: InputDecoration(
                          //       prefixIcon: Icon(Icons.person),
                          //       labelText: 'الاسم',
                          //       enabledBorder: OutlineInputBorder(
                          //         borderSide: BorderSide(
                          //           color: Colors.blue,
                          //         ),
                          //       ),
                          //       border: OutlineInputBorder(),
                          //     ),
                          //   ),
                          // ),

                          SizedBox(
                            height: 40,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.email,
                                size: 30,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              SizedBox(
                                width: 210,
                                height: 40,
                                child: TextField(
                                  //controller: notestext,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    hintText: "أدخل البريد الالكتروني",
                                    // disabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.black,width: 1)),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 60.0),
                InkWell(
                  child: Container(
                      height: 55.0,
                      width: 350,
                      child: Material(
                        borderRadius: BorderRadius.circular(40.0),
                        shadowColor: Colors.blue,
                        color: Colors.blue,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => recPassCode()));
                          },
                          child: Center(
                            child: Text(
                              'أرسل رمز التحقق',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontFamily: 'Tohama'),
                            ),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
