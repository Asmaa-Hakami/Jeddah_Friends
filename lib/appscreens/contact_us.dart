import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  @override
  _ContactUsState createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  final _formKey = GlobalKey<FormState>();
  int _currentIndex = 0;
  bool suggCheck = false;
  bool compCheck = false;
  String _msg;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 224, 224, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Form(
            autovalidate: true,
            key: _formKey,
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: <
                    Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(10, 70, 10, 0),
                width: 360,
                height: 400,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 20, 15, 20),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(':نوع الرسالة ',
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                color: Color.fromRGBO(85, 177, 200, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.bold)),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              Container(
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: <Widget>[
                                      Text('شكوى',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Checkbox(
                                        value: compCheck,
                                        onChanged: (bool value) {
                                          setState(() {
                                            compCheck = value;
                                          });
                                        },
                                      ),
                                    ]),
                              ),
                              Container(
                                child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text('اقتراح',
                                          textAlign: TextAlign.right,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold)),
                                      Checkbox(
                                        value: suggCheck,
                                        onChanged: (bool value) {
                                          setState(() {
                                            suggCheck = value;
                                          });
                                        },
                                      ),
                                    ]),
                              ),
                            ]),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0,15,0,15),
                          child: Text(':الرسالة',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                  color: Color.fromRGBO(85, 177, 200, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold)),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                          child: Directionality(
                            textDirection: TextDirection.rtl,
                                child: TextFormField(
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              maxLines: 6,
                              decoration: InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 0.5),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(25),
                                  borderSide:
                                      BorderSide(color: Colors.black, width: 0.5),
                                ),
                                hintText: 'اكتب هنا',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 10),
                                errorStyle: TextStyle(
                                  fontSize: 16.0
                                ),
                              ),
                              validator: (value) {
                                Pattern pattern = r'[!@#<>"_`~;[\]\\|=+*&^%$]';
                                RegExp regex = new RegExp(pattern);
                                if (value.isEmpty) {
                                  return 'الرجاء كتابةرسالتك';
                                } else {
                                  if (regex.hasMatch(value))
                                    return 'عذرًا ! الرجاء استخدام مفردات وحروف صحيحة';
                                  else
                                    return null;
                                }
                              },
                              onSaved: (value) => _msg = value,
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: <
                  Widget>[
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
                                                  "تم استلام رسالتك بنجاح",
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
                                                  "سيتم الرد في أقرب وقت ممكن",
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontSize: 14))),
                                          Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                50, 30, 50, 0),
                                            child: Center(
                                              child: SizedBox(
                                                width: 70.0,
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
                                                    "تم",
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
                    child: Text('ارسال',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold)),
                  ),
                ),
              ]),
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