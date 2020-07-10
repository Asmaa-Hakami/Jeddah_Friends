import 'package:flutter/material.dart';
import 'package:app1/widgets/app_bar.dart';
import 'package:app1/widgets/info_textfield.dart';

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
                                      child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(8.0, 8.0, 30, 8.0),
              child:
                    Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
                Text('البيانات الشخصية :',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23.0,
                          fontWeight: FontWeight.bold)),
                SizedBox(width: 10),
                Icon(
                    Icons.folder_shared,
                    color: Color.fromRGBO(126, 126, 126, 1),
                    size: 40.0,
                )
              ]),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              width: 360,
              height: 420,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(30)),
              ),
              child: Padding(
                padding: EdgeInsets.all(15),
                child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                             CustomInfoTextField(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('الاسم الثلاثي',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                          CustomInfoTextField(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('الرقم التطوعي',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomInfoTextField(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('تاريخ الانضمام',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomInfoTextField(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('الجنسية',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomInfoTextField(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('الجنس',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomInfoTextField(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('رقم الهوية',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomInfoTextField(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('سنة الميلاد',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomInfoTextField(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('الحي',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomInfoTextField(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('فصيلة الدم',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            CustomInfoTextField(),
                            SizedBox(
                              width: 20,
                            ),
                            Text('مشاكل صحية',
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                      ]),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Row(
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
                          padding: EdgeInsets.fromLTRB(10, 2.0, 48, 2.0),
                          onPressed: () {
                            print("التالي");
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(
                                  Icons.arrow_back_ios,
                                  color: Colors.black,
                                  size: 15.0,
                                ),
                                SizedBox(width: 8),
                                Text('التالي',
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
                          padding: EdgeInsets.fromLTRB(25, 2.0, 49, 2.0),
                          onPressed: () {
                           
                          },
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Text('تحديث', textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                              ]),
                        ),
                      ),
                    ]),
            ),
          ]),
                  ),
        ),
      ),
    );
  }
}
