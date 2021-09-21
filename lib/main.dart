// @dart = 2.9
 import 'package:crash_course/Pages/cart_page.dart';
import 'package:crash_course/Pages/loginPage.dart';
import 'package:crash_course/Pages/product_detail_page.dart';
import 'package:crash_course/utils/routes.dart';
import 'package:crash_course/widgets/Theme.dart';
import 'package:flutter/material.dart';
 import 'package:crash_course/Pages/homeScreen.dart';
import 'package:provider/provider.dart';
 void main(){
   runApp(MyApp());
 }
  class MyApp extends StatelessWidget{
   @override
  Widget build(BuildContext context) {
       return MaterialApp(
         debugShowCheckedModeBanner: false,
        // themeMode: ThemeMode.system,
         theme: MyTheme.lightTheme(context),
         darkTheme: MyTheme.darkTheme(context),
         initialRoute: MyRoutes.homeScreenRoute,
         routes: {
           MyRoutes.homeScreenRoute: (context) => HomePage(),
           MyRoutes.loginScreenRout: (context) => LoginScreen(),
           MyRoutes.productDetailRout: (context) => ProductDetailPage(),
           MyRoutes.cartPageRout: (context) => CartPage(),

         },
       );
     }

  }