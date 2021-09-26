

import 'package:crash_course/core/vxStore.dart';
import 'package:crash_course/moduls/cartModel.dart';
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
import 'package:http/http.dart' as http;


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final url = "https://api.jsonbin.io/b/604dbddb683e7e079c4eefd3";
  @override
  void initState() {
    super.initState();
    loadData();

  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    // final catalogJson =
    // await rootBundle.loadString("assets/catalogJson.json");
    final response = await http.get(Uri.parse(url));
    final catalogJson = response.body;
    final decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }
  @override
  Widget build(BuildContext context) {
    final _cart = (VxState.store as MyStore).cart;
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                Padding(
                  padding: const EdgeInsets.only(left: 2.0),
                  child: CircleAvatar(
                    radius: 8.0,
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    child: Text(
                    _cart!.items.length.toString(),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             CatalogHeader(),
              if( CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                CatalogList().p16().expand()

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