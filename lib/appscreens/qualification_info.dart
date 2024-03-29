import 'package:JeddahFriends/widgets/app_bar.dart';
import 'package:JeddahFriends/widgets/info_textfield.dart';
import 'package:flutter/material.dart';
class QualificationInfo extends StatefulWidget {
  @override
  _QualificationInfoState createState() => _QualificationInfoState();
}

class _QualificationInfoState extends State<QualificationInfo> {
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
                   key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
              Padding(
                padding: const  EdgeInsets.only(right:16),
                child: Row(mainAxisAlignment: MainAxisAlignment.start, 
                children: <Widget>[
                  Icon(
                Icons.school,
                color: Color.fromRGBO(126, 126, 126, 1),
                size: 40.0,
                    ),
                    Text(' المؤهل العلمي :',
                  style: TextStyle(color: Colors.black, fontSize: 23.0,
                            fontWeight: FontWeight.bold)),
                    SizedBox(width: 10),
                    
                  ]),
              ),
              Container(
                margin: EdgeInsets.all(8),
                width: 360,
                height: 280,
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
                            Text('المستوى العلمي',textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                             CustomInfoTextField("بكالوريوس"),     
                    SizedBox(
                      width: 20,
                    ),
                            
                          ],
                        ),
                      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('التخصص',textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                             CustomInfoTextField("حاسب آلي"),     
                    SizedBox(
                      width: 20,
                    ),
                            
                          ],
                        ),
                      
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text('المهنة',textAlign: TextAlign.right,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                             CustomInfoTextField("موظف"),     
                    SizedBox(
                      width: 20,
                    ),
                            
                          ],
                        ),
                      ]),
                ),
              ),
               Padding(
                 padding: const EdgeInsets.only(top:135),
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
                          
                           onPressed: () {
                             print("السابق");

                           },
                           child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 Icon(
                                   Icons.arrow_back_ios,
                                   color: Colors.black,
                                   size: 15.0,
                                 ),
                                 Text('السابق',
                                     style:
                                         TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                                 SizedBox(width: 8),
                                 
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
                            
                        showDialog(
                         context: context,
                         builder: (BuildContext context) {
                           return Dialog(
                             shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.all(Radius.circular(66))),
                             child: Container(
                               height: 200,
                               child: Center(
                                 child: Column(
                                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                   children: [
                                     Center(
                                         child: Text("تم تحديث بياناتك بنجاح",textAlign: TextAlign.center,
                                             style: TextStyle(
                                                 color: Color.fromRGBO(133, 75, 182, 1),
                                                 fontSize: 25,
                                                 fontWeight: FontWeight.bold))),
                                     
                                     Center(
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
                                     )
                                   ],
                                 ),
                               ),
                             ),
                           );
                         });
                           },
                           child: Row(
                               mainAxisAlignment: MainAxisAlignment.center,
                               children: <Widget>[
                                 Text('حفظ البيانات',
                                     style:
                                         TextStyle(color: Colors.white, fontSize: 20,   fontWeight: FontWeight.bold)),
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