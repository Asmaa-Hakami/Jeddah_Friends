import 'package:JeddahFriends/pincode.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'loginnew.dart';

// void main() {
//   runApp(new MaterialApp(
//     title: 'signup-page',
//     home: new SignupPage(),
//   ));
// }

// class SignupPage extends StatelessWidget {
//   static String tag = 'signup-page';

//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: MyHomePage(),
//     );
//   }
// }
class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  //double _result = 0.0;
  String _radioValue = '0';
  String choice;
  bool date = false;

  _radioButtonChanges(String value) {
    setState(() {
      _radioValue = value;
      switch (value) {
        case '0':
          choice = value;
          break;
        case '1':
          choice = value;
          break;

        default:
          choice = '0';
      }
      //Debug the choice in console
    });
  }

  @override
  Widget build(BuildContext context) {
    var _radioValue;
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
                          'حساب جديد ',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.0,
                              fontFamily: 'Tohama'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30.0),
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
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.person,
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
                                    hintText: "    الاســم",
                                    // disabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.black,width: 1)),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.phone,
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
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    hintText: "    رقم الجوال   ",
                                    // disabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.black,width: 1)),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
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
                                    hintText: "    الايميل",
                                    // disabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.black,width: 1)),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
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
                            height: 15,
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
                                    hintText: "    إعادة كلمة المرور",
                                    // disabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.black,width: 1)),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),

                          Container(
                            //  decoration: BoxDecoration(
                            //       border: Border.all(
                            //         color: Colors.blue,width: 2
                            //       ),borderRadius: BorderRadius.circular(5)
                            //     ),
                            margin: const EdgeInsets.all(10.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new Text(
                                  '      الجنس:    ',
                                ),
                                new Radio(
                                  value: 0,
                                  groupValue: _radioValue,
                                  onChanged: _radioButtonChanges('1'),
                                ),
                                new Text('ذكـــر     '),
                                new Radio(
                                  value: 1,
                                  groupValue: _radioValue,
                                  onChanged: _radioButtonChanges('0'),
                                ),
                                new Text('أنـثـئ'),
                              ],
                            ),
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.date_range,
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
                                  keyboardType: TextInputType.number,
                                  style: TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    hintStyle: TextStyle(
                                      color: Colors.black,
                                    ),
                                    hintText: "    العمر ",
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.description,
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
                                    hintText: "    الـمـهـنـة ",
                                    // disabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.black,width: 1)),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Icon(
                                Icons.announcement,
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
                                    hintText: "   هل تعاني من مشاكل صحية",
                                    // disabledBorder: UnderlineInputBorder(borderSide: const BorderSide(color: Colors.black,width: 1)),
                                  ),
                                  textAlign: TextAlign.right,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 30.0),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Theme(
                                  data: ThemeData(
                                      unselectedWidgetColor: Colors.grey[100]),
                                  child: Checkbox(
                                      value: false,
                                      checkColor: Colors.green,
                                      activeColor: Colors.white,
                                      onChanged: (value) {}),
                                ),
                                Text(
                                  'الشروط والأحكام',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0,
                                      decoration: TextDecoration.underline),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: <Widget>[
                                Theme(
                                  data: ThemeData(
                                      unselectedWidgetColor: Colors.grey),
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
                                Text(
                                  'أوافق على شروط الاستخدام',
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      color: Colors.black87,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16.0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PincodePage()));
                    },
                    child: Container(
                        height: 50.0,
                        width: 350,
                        child: Material(
                          borderRadius: BorderRadius.circular(20.0),
                          shadowColor: Colors.blue,
                          color: Colors.blue,
                          elevation: 7.0,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PincodePage()));
                            },
                            child: Center(
                              child: Text(
                                'إنشاء حساب',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 22.0,
                                    fontFamily: 'Tohama'),
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                  child: Text(
                    'لديك حساب؟',
                    style: TextStyle(
                        color: Colors.blue,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        decoration: TextDecoration.underline),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
