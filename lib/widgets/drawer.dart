import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
     color: Colors.teal,

      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountEmail: Text('abdurrehmanlkl@gmail.com',
              textScaleFactor: 1.5,
            ),
              accountName: Text('Abdur Rehman',
              textScaleFactor: 1.5,
              ),


            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home
              ),
              title: Text('Home'),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
              ),
              title: Text('Email'),

            ),
          ],
        ),
      ),
    );
  }
}