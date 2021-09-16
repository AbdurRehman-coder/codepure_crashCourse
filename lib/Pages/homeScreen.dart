 import 'dart:convert';

import 'package:crash_course/moduls/catalog.dart';
import 'package:crash_course/widgets/drawer.dart';
import 'package:crash_course/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CatalogModul catalogModul = CatalogModul();

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }
  loadData() async {
  final catalogjson = await rootBundle.loadString('assets/catalogJson.json');
  final decodeData = jsonDecode(catalogjson);
  var productData = decodeData['products'];
catalogModul.items = List.from(productData).map<Item>((item) => item.fromMap(item)).toList();

}


   @override
  Widget build(BuildContext context) {
     final copyLists = List.generate(30, (index) => catalogModul.items[0]);

     // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('catalog App',
       ),
       ),
      body: ListView.builder(
        itemCount: copyLists.length,
          itemBuilder: (context, index){
           return ItemWidget(
            item: copyLists[index],
          );
        }),
      drawer: MyDrawer(),
    );
  }
}