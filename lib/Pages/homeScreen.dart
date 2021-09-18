

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
    // TODO: implement build
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, MyRoutes.cartPageRout);
        },
        child: Icon(CupertinoIcons.cart),
        backgroundColor: MyTheme.darkBlushColor,
      ),
      body: SafeArea(
        bottom: false,
        top: false,
        child:  Container(
          padding: Vx.mV16,
          margin: Vx.mH12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CatalogHeader(),
              if( CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                CatalogList().expand()

              else Center(
                  child: CircularProgressIndicator(),
                )


            ],
          ),
        ),
      ),
    );
  }
}