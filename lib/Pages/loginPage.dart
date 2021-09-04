 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
 class LoginScreen extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.backspace),
        title: Text('login screen'),
      ),
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        child: Column(
          children: <Widget>[
            Image.asset('images/login_screen.png',
            scale: 0.2,
            fit: BoxFit.cover,
            ),
            SizedBox(
              height: 15
            ),
            Text('To access more, please login',
        style: GoogleFonts.lato(
              textStyle: Theme.of(context).textTheme.headline6,
              fontWeight: FontWeight.w700,
            )

            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: ('enter user name'),
                labelText: ('User Name'),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),


                ),

              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: 'enter password',
                labelText: 'Password',
                errorText: 'wrong password',
                fillColor: Colors.black26,

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