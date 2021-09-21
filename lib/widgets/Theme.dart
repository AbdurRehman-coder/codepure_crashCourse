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
        primaryColorLight: creamColor,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          // Icon Theme Data
          iconTheme: IconThemeData(
            color: Colors.black,
            size: 50,
          ),
        ),
        // Icon data for every icon
        iconTheme: IconThemeData(
          color: darkBlushColor,
          size: 40,
        ),

        //Text Theme Data for light mode
        textTheme: TextTheme(
            headline2: GoogleFonts.workSans(
              textStyle: TextStyle(
                color: darkBlushColor,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
            headline4: GoogleFonts.aBeeZee(
              textStyle: TextStyle(
                color: darkBlushColor,
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle1: GoogleFonts.workSansTextTheme().subtitle1,
            bodyText1: GoogleFonts.workSans(
              textStyle: TextStyle(
                color: Colors.grey[800],
              ),
            )),

        //ThemeData for Elevated Buttons
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
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
        primaryColor: Colors.cyan,
        canvasColor: Colors.grey[900],
        cardColor: Colors.black,
        accentColor: creamColor,
        primaryColorLight: creamColor,
        //app Bar for dar theme
        appBarTheme: AppBarTheme(
          color: Colors.black54,
          //AppBar Icon  for dark theme
          iconTheme: IconThemeData(
            color: Colors.white,
            size: 50,
          ),
        ),
        // Icon data for every icon
        iconTheme: IconThemeData(
          color: creamColor,
          size: 40,
        ),
        // Text Theme for dark mode
        textTheme: TextTheme(
          headline2: GoogleFonts.workSans(
            textStyle: TextStyle(
              color: creamColor,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          headline4: GoogleFonts.aBeeZee(
            textStyle: TextStyle(
              color: creamColor,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),
          bodyText1: GoogleFonts.workSans(
            textStyle: TextStyle(
              fontSize: 13,
              color: creamColor,
            ),
          ),
          subtitle1: GoogleFonts.workSans(
              textStyle: TextStyle(
            color: Colors.white70,
                fontSize: 12,
          )),
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