

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primaryColor: Colors.cyan,
        primarySwatch: Colors.teal,
        cardColor: Colors.white,
        canvasColor: creamColor,
        accentColor: darkBlushColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
     // Icon Theme Data
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 50,
          ),
        ),
        //Text Theme Data

        textTheme: TextTheme(
          headline2: TextStyle(
            color: darkBlushColor,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          headline4: TextStyle(
            color: darkBlushColor,
            fontSize: 20,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: TextStyle(
            color: Colors.grey[800],

          )
        ),

        //ThemeData for Elevated Buttons
        elevatedButtonTheme: ElevatedButtonThemeData(

          style: ButtonStyle(
            textStyle: MaterialStateProperty.all(
              TextStyle(
              //  color: Colors.green,
               // fontWeight: FontWeight.bold,

              ),
            ),
              padding: MaterialStateProperty.all(
                EdgeInsets.all(10),
              ),
              shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              )),
              backgroundColor: MaterialStateProperty.all(
                darkBlushColor,
              ),
              foregroundColor: MaterialStateProperty.all(
                Colors.white,
              ),
              shadowColor: MaterialStateProperty.all(
                Colors.greenAccent,
              )),
        ),

    // FloatingActionButton theme data for Light
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Theme.of(context).canvasColor,
          shape: StadiumBorder(),
        ),
      );

  // Theme for Dark Screen
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        canvasColor: Colors.grey[900],
        cardColor: Colors.black,
      accentColor: darkBlushColor,
        appBarTheme: AppBarTheme(
          color: Colors.black54,
          textTheme: GoogleFonts.workSansTextTheme(
            Theme.of(context).textTheme.apply(
                  bodyColor: Colors.white,
                ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 50,
          ),
        ),
//Theme data for Eleveted Button for Dark
        elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
                shape: MaterialStateProperty.all(StadiumBorder()),
                backgroundColor: MaterialStateProperty.all(
                  Colors.deepPurple,
                ),
                foregroundColor: MaterialStateProperty.all(
                  Colors.white,
                ),
                shadowColor: MaterialStateProperty.all(
                  Colors.greenAccent,
                ))),
      );



  static Color creamColor = Color(0xfff5f5f5);
  static Color darkBlushColor = Color(0xff403b58);
}