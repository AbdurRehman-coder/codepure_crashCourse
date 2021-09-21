

import 'package:crash_course/moduls/catalog.dart';
import 'package:crash_course/utils/routes.dart';
import 'package:crash_course/widgets/Theme.dart';
import 'package:crash_course/widgets/productDetailPage/catalog_header.dart';
import 'package:crash_course/widgets/productDetailPage/catalog_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import "package:velocity_x/velocity_x.dart";


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();

  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogJson =
    await rootBundle.loadString("assets/catalogJson.json");
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    int cartCount = 3;
    // TODO: implement build
    return Scaffold(
      floatingActionButton: InkWell(
          onTap: (){
            Navigator.pushNamed(context,
                MyRoutes.cartPageRout);
          },
        child: Stack(
            alignment: Alignment.topRight,
            children: <Widget>[


              Icon(
                Icons.shopping_cart,
              ),
              if (cartCount >= 0)
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: CircleAvatar(
                    radius: 8.0,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    child: Text(
                      cartCount.toString(),
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ),
            ],
          ),
      ),


      body: SafeArea(
        bottom: false,
        top: false,
        child:  Container(
          padding: Vx.mV16,
          margin: Vx.mH12,
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CatalogHeader(),
              if( CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                CatalogList().expand()

              else Center(
                      child: CircularProgressIndicator(),
                    ).expand(),


            ],
          ),
        ),
      ),
    );
  }
}