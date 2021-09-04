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
      darkTheme: ThemeData.dark(),
       theme: ThemeData(
         primaryColor: Colors.indigo,
         brightness: Brightness.light
       ),
      routes: {
        '/': (context) => LoginScreen(),
        '/LoginScreen': (context) => HomeScreen(),
      },
    );
  }
  }