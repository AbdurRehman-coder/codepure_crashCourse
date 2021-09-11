// @dart = 2.9
 import 'package:crash_course/Pages/loginPage.dart';
import 'package:crash_course/utils/routes.dart';
import 'package:crash_course/widgets/Theme.dart';
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

       theme: MyTheme.lightTheme(context),
      initialRoute: MyRoutes.homeScreenRoute,
      routes: {
        MyRoutes.homeScreenRoute: (context) => HomeScreen(),
        MyRoutes.loginScreenRout: (context) => LoginScreen(),

      },
    );
  }
  }