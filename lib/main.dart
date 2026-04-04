import'package:flutter/material.dart';
import 'package:tv/screens/Categories.dart';
import 'package:tv/screens/loginscreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        body: Categories(),
      ),
    );
  }
}
