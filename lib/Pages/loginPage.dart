 import 'package:flutter/material.dart';
 class LoginScreen extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        actions: [
          ListTile(
            leading: Icon(
              Icons.backspace,
              size: 20.0,
              
            ),
            title: Text('Login Screen'),
            
          )
        ],
      ),
      
      body: Column(
        children: <Widget>[
          Image.asset('images/login_screen.png'),

        ],
      ),
    );
  }
 }