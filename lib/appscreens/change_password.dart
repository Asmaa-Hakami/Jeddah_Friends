import 'package:flutter/material.dart';
import 'package:app1/widgets/app_bar.dart';

class ChangePassword extends StatefulWidget {
  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  int _currentIndex = 0;
  final _formKey = GlobalKey<FormState>();
  String _pass;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 224, 224, 1),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 120.0),
        child: CustomAppBar(),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
          //  autovalidate: true,
            key: _formKey,
            child: Column(children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(20, 10, 20, 40),
                width: 360,
                height: 280,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(30, 0, 30, 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          obscureText: true,
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'ادخل كلمة المرور السابقة',
                            errorStyle: TextStyle(fontSize: 14.0),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'الرجاء ادخال كلمة المرور السابقة';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) => _pass = value,
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          obscureText: true,
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'كلمة المرور الجديدة',
                            errorStyle: TextStyle(fontSize: 14.0),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'الرجاء ادخال كلمة المرور الجديدة';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) => _pass = value,
                        ),
                      ),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextFormField(
                          obscureText: true,
                          textDirection: TextDirection.ltr,
                          textAlign: TextAlign.right,
                          decoration: InputDecoration(
                            hintText: 'تأكيد كلمة المرور الجديدة',
                            errorStyle: TextStyle(fontSize: 14.0),
                          ),
                          validator: (value) {
                            if (value.isEmpty) {
                              return 'الرجاء ادخال تأكيد كلمة المرور الجديدة';
                            } else {
                              return null;
                            }
                          },
                          onSaved: (value) => _pass = value,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 360,
                height: 55,
                child: FlatButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                  color: Color.fromRGBO(85, 177, 200, 1),
                  padding: EdgeInsets.fromLTRB(10, 2.0, 0, 2.0),
                  onPressed: () {
                    final form = _formKey.currentState;
                    if (form.validate()) {
                      form.save();
                      showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(66))),
                              child: Container(
                                height: 200,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Center(
                                            child: Text(
                                                "تم تغيير كلمة المرور بنجاح",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Color.fromRGBO(
                                                        133, 75, 182, 1),
                                                    fontSize: 25,
                                                    fontWeight:
                                                        FontWeight.bold))),
                                        SizedBox(height: 15),
                                        Center(
                                            child: Text(
                                                "يمكنك الآن تسجيل الدخول من جديد",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontSize: 14))),
                                        Padding(
                                          padding: EdgeInsets.fromLTRB(
                                              50, 30, 50, 0),
                                          child: Center(
                                            child: SizedBox(
                                              width: 130.0,
                                              child: RaisedButton(
                                                shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15.0),
                                                ),
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  "تسجيل الدخول",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 17,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                color: Color.fromRGBO(
                                                    85, 177, 200, 1),
                                              ),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          });
                    }
                  },
                  child: Text('تغيير كلمة المرور',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                ),
              ),
            ]),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        items: [
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
              Icons.calendar_today,
              color: Color.fromRGBO(126, 126, 126, 1),
              size: 35.0,
            ),
            title: new Text('المبادرات',
                style: TextStyle(
                    color: Color.fromRGBO(126, 126, 126, 1), fontSize: 20.0)),
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
