import 'package:flutter/material.dart';

class buttom extends StatelessWidget {
   buttom({this.onTap,required this.text});
String? text;
VoidCallback? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 50,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 33, 10, 163),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(child: Text('$text',style: TextStyle(color: Color.fromRGBO(253, 253, 253, 1)),)),
      ),
    );
  }
}