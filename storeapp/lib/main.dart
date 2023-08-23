import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:storeapp/screens/homepage.dart';
import 'package:storeapp/screens/updateproduct.dart';

void main() {
  runApp(const storeApp());
  
}
class storeApp extends StatelessWidget {
  const storeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
homepage.id:(context)=>homepage(),
updateproduct.id:(context) => updateproduct(),
      },
      initialRoute: homepage.id,
    );
  }
}



