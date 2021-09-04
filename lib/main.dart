 import 'package:crash_course/Pages/loginPage.dart';
import 'package:flutter/material.dart';
 import 'package:crash_course/Pages/homeScreen.dart';
 void main(){
   runApp(MyApp());
 }
  class MyApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(

      routes: {
        '/': (context) => LoginScreen(),
        '/HomeScree': (context) =>HomeScreen(),
      },
    );
  }
  }