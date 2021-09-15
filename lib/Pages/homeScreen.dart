 import 'package:crash_course/moduls/catalog.dart';
import 'package:crash_course/widgets/drawer.dart';
import 'package:crash_course/widgets/item_widget.dart';
import 'package:flutter/material.dart';
 class HomeScreen extends StatelessWidget{
 CatalogModul catalogModul = CatalogModul();
   @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('catalog App',
       ),
       ),
      body: ListView.builder(
        itemCount: catalogModul.items.length,
          itemBuilder: (context, index){
           return ItemWidget(
            item: catalogModul.items[index],
          );
        }),
      drawer: MyDrawer(),
    );
  }
 }