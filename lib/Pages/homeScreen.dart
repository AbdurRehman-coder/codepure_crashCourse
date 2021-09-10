 import 'package:crash_course/widgets/drawer.dart';
import 'package:flutter/material.dart';
 class HomeScreen extends StatelessWidget{

   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('home Screen'),
      ),
      body: Center(
        child:  Text(
          'welcome to the home screen'
        ),
      ),
      drawer: MyDrawer(),
    );
  }
 }