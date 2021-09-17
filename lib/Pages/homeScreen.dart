

import 'package:crash_course/moduls/catalog.dart';
import 'package:crash_course/widgets/Theme.dart';
import 'package:crash_course/widgets/drawer.dart';
import 'package:crash_course/widgets/item_widget.dart';
import 'package:crash_course/widgets/gridWidget.dart';
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
      body: SafeArea(
        child:  Container(
          padding: Vx.mV16,
          margin: Vx.mH12,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            // CatalogHeader(),
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
class CatalogHeader extends StatelessWidget{
@override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        "Catalog App".text.bold.xl3.make(),
        'Trending Proguct'.text.black.xl.make(),
      ],
    );
  }
}
class CatalogList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        itemCount: CatalogModel.items!.length,
      itemBuilder: (BuildContext context, int index) {
          final catalogData = CatalogModel.items![index];
          return CatalogItem(catalog: catalogData,);

      },
    );
  }
}
class CatalogItem extends StatelessWidget{
  final Item catalog;
  CatalogItem({required this.catalog});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return VxBox(
      child: Card(
        child: Row(
          children: [
            CatalogImage( image: catalog.image),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      catalog.name.text.bold.medium.color(Colors.blueGrey).make(),
                      catalog.desc.text.textStyle(context.captionStyle!).make(),
                    ],
                  ),
                  ButtonBar(
                    alignment: MainAxisAlignment.spaceBetween,
                   children: [
                     '\$${catalog.price}'.text.medium.make(),
                      ElevatedButton(
                          onPressed: (){
                          },
                       style: ButtonStyle(
                         backgroundColor: MaterialStateProperty.all(MyTheme.darkBlushColor),
                       ),
                          child: 'Buy'.text.medium.make(),
                      ),
                   ],
                  ),
                ],
              ),
            )
          ],

        ).backgroundColor(Colors.white10),
      ),
    ).white.square(130).make();
  }
}
// class for Image ( network image)
class CatalogImage extends StatelessWidget{
  late final String image;
  CatalogImage({required this.image});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Image.network(
      image,
    ).box.rounded.p16.color(MyTheme.creamColor).make().p8();
  }
}