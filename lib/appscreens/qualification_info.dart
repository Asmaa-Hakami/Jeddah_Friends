import 'package:flutter/material.dart';
import 'package:app1/widgets/app_bar.dart';
import 'package:app1/widgets/info_textfield.dart';
class QualificationInfo extends StatefulWidget {
  @override
  _QualificationInfoState createState() => _QualificationInfoState();
}

class _QualificationInfoState extends State<QualificationInfo> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(226, 224, 224, 1),
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 120.0), 
        child: CustomAppBar(),
      ),
      body: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 8.0, 20, 8.0),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            Text(' المؤهل العلمي :',
                style: TextStyle(color: Colors.black, fontSize: 23.0,
                          fontWeight: FontWeight.bold)),
            SizedBox(width: 10),
            Icon(
              Icons.school,
              color: Color.fromRGBO(126, 126, 126, 1),
              size: 40.0,
            )
          ]),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
          width: 360,
          height: 280,
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
                      Text('المستوى العلمي',textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
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
                      Text('التخصص',textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
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
                      Text('المهنة',textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold)),
                    ],
                  ),
                ]),
          ),
        ),
         Padding(
          padding: const EdgeInsets.fromLTRB(10, 150, 10, 0),
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
                    padding: EdgeInsets.fromLTRB(10, 2.0,32, 2.0),
                    onPressed: () {
                      print('حفظ البيانات');
                        print("ارسال");
                 showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(66))),
                      child: Container(
                        height: 200,
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                    child: Text("تم تحديث بياناتك بنجاح",textAlign: TextAlign.center,
                                        style: TextStyle(
                                            color: Color.fromRGBO(133, 75, 182, 1),
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold))),
                                
                                Padding(
                                  padding: EdgeInsets.fromLTRB(50, 30, 50, 0),
                                  child: Center(
                                    child: SizedBox(
                                      width: 70.0,
                                      child: RaisedButton(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(13.0),
                                        ),
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text(
                                          "تم",textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,fontWeight: FontWeight.bold),
                                        ),
                                        color: Color.fromRGBO(85, 177, 200, 1),
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
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('حفظ البيانات',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20,   fontWeight: FontWeight.bold)),
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
                    padding: EdgeInsets.fromLTRB(25, 2.0, 35, 2.0),
                    onPressed: () {
                      print("السابق");
                    },
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text('السابق',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                          SizedBox(width: 8),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.black,
                            size: 15.0,
                          ),
                        ]),
                  ),
                ),
              ]),
        ),
      ]), 
    );
  }
}