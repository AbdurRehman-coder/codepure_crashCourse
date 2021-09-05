import 'package:crash_course/Pages/homeScreen.dart';
import 'package:crash_course/utils/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
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
            Image.asset(
              'images/login_screen.png',
              scale: 0.2,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 15),
            Text('To access more, please login',
                style: GoogleFonts.lato(
                  textStyle: Theme.of(context).textTheme.headline6,
                  fontWeight: FontWeight.w700,
                )),
            SizedBox(
              height: 10,
            ),
            Column(children: [
              TextFormField(
                decoration: InputDecoration(
                  hintText: ('enter user name'),
                  labelText: ('User Name'),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'enter password',
                    labelText: 'Password',
                    fillColor: Colors.black26,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(40),
                    )),
              ),
            ],),
            SizedBox(
              height: 15,
             ),

            Container(
              height: 50,
              width: 150,
              child: Text('Login',
              style: GoogleFonts.lato(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,


              ),),
              alignment: Alignment.center,
           decoration: BoxDecoration(
             color: Colors.indigo,
             borderRadius: BorderRadius.circular(10),

           ),



            ),



            // ElevatedButton(
            //   onPressed: (){
            //     Navigator.pushNamed(context, MyRoutes.homeScreenRoute);
            //   },
            //   child: Text('Login'),
            // ),
          ],
        ),
      ),
    );
  }
}