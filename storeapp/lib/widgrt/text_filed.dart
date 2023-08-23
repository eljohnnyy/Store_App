import 'package:flutter/material.dart';

class textfiled extends StatelessWidget {
 textfiled({this.onChanged, this.hint,required this.obsecure,this.inputType});
 
String? hint;
bool? obsecure;
TextInputType? inputType;
Function(String)?onChanged;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      obscureText: obsecure!,
      keyboardType: inputType,
      onChanged:onChanged ,
              decoration: InputDecoration(
                hintText: '$hint',
               
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide(
                    color: Colors.grey,
                  ),
                ),
              ),
            );
  }
}