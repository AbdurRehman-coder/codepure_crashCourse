import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(

      child: Material(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
        elevation: 34,
        shadowColor: Colors.white,

        child: ListView(
          padding: EdgeInsets.zero,
          children: [

            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                //color: Colors.indigo,
              ),

              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('images/AbdurRehman.JPG',),),
              accountEmail: Text('abdurrehmanlkl@gmail.com',
                style: TextStyle(

                  color: Colors.black,
                ),
                textScaleFactor: 1.5,
              ),
              accountName: Text('Abdur Rehman',
                style: TextStyle(
                  color: Colors.black,
                ),
                textScaleFactor: 1.5,
              ),


            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text('Home',
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text('Profile',
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.black,
                ),),
              onTap: () {

              },
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text('Email me',
                textScaleFactor: 1.3,
                style: TextStyle(
                  color: Colors.black,
                ),),
              onTap: () {

              },
            ),

          ],
        ),
      ),
    );
  }
}