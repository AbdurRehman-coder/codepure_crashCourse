 import 'package:crash_course/Pages/loginPage.dart';
import 'package:crash_course/utils/routes.dart';
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
         primarySwatch: Colors.indigo,
         brightness: Brightness.light
       ),
      routes: {
        '/': (context) => LoginScreen(),
        MyRoutes.homeScreenRoute: (context) => HomeScreen(),
        MyRoutes.loginScreenRout: (context) => LoginScreen(),

      },
    );
  }
  }