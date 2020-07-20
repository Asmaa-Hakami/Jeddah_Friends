import 'package:JeddahFriends/appscreens/contact_info.dart';
import 'package:JeddahFriends/widgets/app_bar.dart';
import 'package:JeddahFriends/widgets/info_textfield.dart';
import 'package:flutter/material.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final _formKey = GlobalKey<FormState>();

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
            autovalidate: true,
            key: _formKey,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right:16),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                            Icon(
                            Icons.folder_shared,
                            color: Color.fromRGBO(126, 126, 126, 1),
                            size: 40.0,
                          ),
                           Padding(
                             padding: const EdgeInsets.only(right:15.0, top: 5),
                          child: Text('البيانات الشخصية :',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23.0,
                                  fontWeight: FontWeight.bold)),),
                          SizedBox(width: 10),

                        ]),
                  ),
                  Container(
                  margin: EdgeInsets.all(10),
                    width: 360,
                    height: 420,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(13),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('الاسم الثلاثي',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                CustomInfoTextField("معاذ عبدالرحمن أحمد"),
                                SizedBox(
                                  width: 20,
                                ),
                                
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                    Text('الرقم التطوعي',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),

                                CustomInfoTextField("12345"),
                                SizedBox(
                                  width: 20,
                                ),

                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('تاريخ الانضمام',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                CustomInfoTextField("28 / 2 / 2020"),
                                SizedBox(
                                  width: 20,
                                ),
                                
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('الجنسية',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                CustomInfoTextField("سعودي"),
                                SizedBox(
                                  width: 20,
                                ),
                                
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('الجنس',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                CustomInfoTextField("ذكر"),
                                SizedBox(
                                  width: 20,
                                ),
                                
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('رقم الهوية',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                CustomInfoTextField("1100278399"),
                                SizedBox(
                                  width: 20,
                                ),
                                
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('سنة الميلاد',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                CustomInfoTextField("21 / 2 / 1997"),
                                SizedBox(
                                  width: 20,
                                ),
                                
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                 Text('الحي',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                CustomInfoTextField("النسيم"),
                                SizedBox(
                                  width: 20,
                                ),
                               
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('فصيلة الدم',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                CustomInfoTextField("O+"),
                                SizedBox(
                                  width: 20,
                                ),
                                
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text('مشاكل صحية',
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold)),
                                CustomInfoTextField("لا يوجد"),
                                SizedBox(
                                  width: 20,
                                ),
                                
                              ],
                            ),
                          ]),
                    ),
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          width: 150,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Color.fromRGBO(85, 177, 200, 1),
                            textColor: Colors.black,
                            onPressed: () {

                            },
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Text('تحديث',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                ]),
                          ),
                          
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          width: 150,
                          child: FlatButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),
                            ),
                            color: Color.fromRGBO(85, 177, 200, 1),
                            textColor: Colors.black,         
                            onPressed: () {
                             Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ContactInfo())); 
                            },
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,      
                                children: <Widget>[
                                  SizedBox(width: 8),
                                  Text('التالي',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                          
                                           Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.black,
                                    size: 15.0,
                                  ),
                                ]),
                          ),
                          
                        ),
                      ]),
                ]),
          ),
        ),
      ),
    );
  }
}