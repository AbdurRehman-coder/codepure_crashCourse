import 'package:crash_course/Pages/homeScreen.dart';
import 'package:crash_course/Pages/product_detail_page.dart';
import 'package:crash_course/moduls/catalog.dart';
import 'package:crash_course/widgets/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: CatalogModel.items!.length,
      itemBuilder: (BuildContext context, int index) {
        final catalogData = CatalogModel.items![index];
        return CatalogItem(
          catalog: catalogData,
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  CatalogItem({required this.catalog});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return VxBox(
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(catalog: catalog),
            ),
          );
        },
        child: Card(
          child: Row(
            children: [
              Hero(
                tag: Key(catalog.id.toString()),
                  child: CatalogImage(image: catalog.image)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        catalog.name.text.bold.medium
                            .color(Colors.blueGrey)
                            .make(),
                        catalog.desc.text
                            .textStyle(context.captionStyle!)
                            .make(),
                      ],
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        '\$${catalog.price}'.text.medium.make(),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                MyTheme.darkBlushColor),
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
      ),
    ).white.square(130).make();
  }
}