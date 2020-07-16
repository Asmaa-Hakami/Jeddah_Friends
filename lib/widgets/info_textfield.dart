import 'package:flutter/material.dart';


class CustomInfoTextField extends StatelessWidget {
  String text ;
 CustomInfoTextField(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
                        width: 210,
                        child: TextFormField(
                        
                               textDirection: TextDirection.rtl,
                           textAlignVertical: TextAlignVertical.center,
                          style: TextStyle( 
                              fontSize: 14, height: 0, color: Colors.black),
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          decoration: InputDecoration(
                             hintText: text,
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(34),
                              borderSide:
                                  BorderSide(color: Colors.grey, width: 0.5),
                            ),
                             focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(25),
                                borderSide:
                                    BorderSide(color: Colors.black, width: 0.5),
                              ),
                            isDense: true, 
                            contentPadding: EdgeInsets.symmetric(vertical: 15),
                             errorStyle: TextStyle(
                                fontSize: 16.0,
                              ),
                          ),
                        ),
                      );
  }
}