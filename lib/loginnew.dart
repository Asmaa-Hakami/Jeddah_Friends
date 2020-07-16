import 'package:JeddahFriends/main.dart';
import 'package:JeddahFriends/recoverypassword.dart';
import 'package:JeddahFriends/signup.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

// class LoginPage extends StatelessWidget {
//   static String tag = 'signup-page';

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
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
                        "أولاً يجب أن تقوم بإدخال البريد الالكتروني وكلمة السر الخاصة بحسابك",
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

  Future<List<Constraints>> dialog2() async {
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
              'عذراً',
              style: TextStyle(fontSize: 28, color: Colors.red[600]),
            )),
            content: Container(
              height: 200,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 2,
                  ),
                  Text(
                      "لا يوجد مستخدم بهذا الاسم, الرجاء التأكد من البريد الالكتروني أو كلمة السر",
                      style: TextStyle(fontSize: 15, color: Colors.black)),
                  SizedBox(height: 10.0),
                  InkWell(
                    onTap: () {
                      Navigator.pop(
                        context,
                      );
                    },
                    child: Container(
                        height: 50.0,
                        width: 250,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.red[600],
                          color: Colors.red[600],
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {},
                            child: Center(
                              child: Text(' العودة',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white)),
                            ),
                          ),
                        )),
                  ),
                ],
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
                           //   Navigator.pushReplacement(
                             //     context,
                               //   MaterialPageRoute(
                                 //     builder: (context) => LoginPage()));
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
                          'تسجيل الدخول',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.0,
                              fontFamily: 'Tohama'),
                        ),
                      ),
                    ],
                  ),
                ),

                /* Container(
                  height: MediaQuery.of(context).size.height * 0.25,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [Colors.blue, Colors.blue],
                          end: Alignment.bottomCenter,
                          begin: Alignment.topCenter),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(85))),
                  child: Center(
                    child: Text(
                      'تسجيل الدخول',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          fontFamily: 'Tohama'),
                    ),
                  ),
                ),*/
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.85,
                    color: Colors.grey[100],
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10.0),
                            child: Divider(),
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
                                    hintText: "رقم الجوال أو البريد الالكتروني",
                                    // disabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.black,width: 1)),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.vpn_key,
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
                                    hintText: "    كلمة المرور",
                                    // disabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.black,width: 1)),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 5.0),
                SizedBox(width: 5.0),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'تذكرني',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                      Theme(
                        data:
                            ThemeData(unselectedWidgetColor: Colors.grey[600]),
                        child: Checkbox(
                            value: date,
                            // checkColor: Colors.blue,
                            // activeColor: Colors.white,
                            onChanged: (v) {
                              setState(() {
                                date = v;
                              });
                            }),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.0),
                InkWell(
                  onTap: () {
                    setState(() {
                      _email = email.text;
                      _password = password.text;
                    });
                    if (_email == '' && _password == '') {
                      dialog();
                    } else {
                      dialog2();
                    }
                  },
                  child: Container(
                      height: 55.0,
                      width: 350,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.blue,
                        color: Colors.blue,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              _email = email.text;
                              _password = password.text;

                            });
                            if (_email == '' && _password == '') {
                              dialog();
                            } else {
                              dialog2();
                            }
                            //#############من السهم يرجع للمبادرات
                            Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MyHomePage()));
                          },
                          child: Center(
                            child: Text(
                              'تسجيل الدخول',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontFamily: 'Tohama'),
                            ),
                          ),
                        ),
                      )),
                ),
                SizedBox(height: 20.0),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(width: 5.0),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Signup()));
                        },
                        child: Text(
                          'إنشاء حساب جديد',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                              fontFamily: 'Montserrat',
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 5.0),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RecoveryPaasword()));
                  },
                  child: Text(
                    'نسيت كلمة المرور',
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Montserrat',
                        fontSize: 18.0,
                        decoration: TextDecoration.underline),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/*mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'مستخدم جديد؟',
                      style:
                          TextStyle(fontFamily: 'Montserrat', fontSize: 16.0),
                    ),
                    SizedBox(width: 5.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/Signup');
                      },
                      child: Text(
                        'أنشئ حساب',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'نسيت كلمة المرور',
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        decoration: TextDecoration.underline),
                  ),
                ),


              Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      ' تذكرني',
                      style:
                          TextStyle(fontFamily: 'Montserrat', fontSize: 16.0),
                    ),
                    SizedBox(width: 5.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/Signup');
                      },
                    )
                  ],


                  InkWell(
                  onTap: () {},
                  child: Text(
                    'تذكرني',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                ),
                ),
              Padding(
                  padding: const EdgeInsets.all(30),
                  child: Container(
                      height: 50.0,
                      child: Material(
                        borderRadius: BorderRadius.circular(20.0),
                        shadowColor: Colors.blue,
                        color: Colors.blue,
                        elevation: 7.0,
                        child: GestureDetector(
                          onTap: () {},
                          child: Center(
                            child: Text(
                              'تسجيل الدخول',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 22.0,
                                  fontFamily: 'Tohama'),
                            ),
                          ),
                        ),
                      )),
                ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'مستخدم جديد؟',
                      style:
                          TextStyle(fontFamily: 'Montserrat', fontSize: 16.0),
                    ),
                    SizedBox(width: 5.0),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/Signup');
                      },
                      child: Text(
                        'أنشئ حساب',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline),
                      ),
                    )
                  ],
                ),
                InkWell(
                  onTap: () {},
                  child: Text(
                    'نسيت كلمة المرور',
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        decoration: TextDecoration.underline),
                  ),
                )*/
/*
              ),
        ),
      ),
    );
  }
}
*/
