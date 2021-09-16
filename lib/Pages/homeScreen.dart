
import 'package:crash_course/moduls/catalog.dart';
import 'package:crash_course/widgets/drawer.dart';
import 'package:crash_course/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Codepur";

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? ListView.builder(
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) => ItemWidget(
            item: CatalogModel.items[index],
          ),
        )
            : Center(
          child: CircularProgressIndicator(),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}













//  import 'dart:convert';
//
// import 'package:crash_course/moduls/catalog.dart';
// import 'package:crash_course/widgets/drawer.dart';
// import 'package:crash_course/widgets/item_widget.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
//  class HomeScreen extends StatefulWidget{
//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   CatalogModel catalogModel = CatalogModel();
//
// @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     loadData();
//   }
//   Future loadData() async {
//   Future.delayed(Duration(seconds: 2));
//   final catalogjson = await rootBundle.loadString('assets/catalogJson.json');
//   final decodeData = jsonDecode(catalogjson);
//   var productData = decodeData['products'];
// CatalogModel.items = List.from(productData).map<Item>((item) => item.fromMap(item)).toList();
// setState(() {});
//
// }
//
//
//    @override
//   Widget build(BuildContext context) {
//      // TODO: implement build
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('catalog App',
//        ),
//        ),
//       body: (CatalogModel.items != null && CatalogModel.items.isEmpty)? ListView.builder(
//         itemCount: CatalogModel.items.length,
//           itemBuilder: (context, index){
//            return ItemWidget(
//             item: CatalogModel.items[index],
//           );
//         }): Center(
//         child: CircularProgressIndicator(),
//       ),
//       drawer: MyDrawer(),
//     );
//   }
//}