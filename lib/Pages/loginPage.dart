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
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Column(
          children: <Widget>[
            Image.asset('images/login_screen.png',
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15
            ),
            Column(
              children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: ('enter user name'),
                labelText: ('User Name'),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),

                ),

              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'enter password',
                labelText: 'Password',
                errorText: 'wrong password',

              ),
            ),
     ]
            ),

          ],
        ),
      ),
    );
  }
 }