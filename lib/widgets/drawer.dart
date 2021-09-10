import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(

        child: Material(
          color: Colors.indigo,
          elevation: 34,
          shadowColor: Colors.white,

          child: ListView(
            padding: EdgeInsets.zero,
            children: [

              UserAccountsDrawerHeader(


                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('images/AbdurRehman.JPG'),),
                accountEmail: Text('abdurrehmanlkl@gmail.com',
                textScaleFactor: 1.5,
              ),
                accountName: Text('Abdur Rehman',
                textScaleFactor: 1.5,
                ),


              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color:  Colors.white,
                ),
                title: Text('Home',
                textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                onTap: (){

                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text('Profile',
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                onTap: (){

                },
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text('Email me',
                  textScaleFactor: 1.3,
                  style: TextStyle(
                    color: Colors.white,
                  ),),
                onTap: (){

                },
              ),
            ],
          ),
        ),
      );
  }
}