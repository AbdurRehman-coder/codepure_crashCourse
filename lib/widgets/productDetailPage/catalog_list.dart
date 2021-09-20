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

class CatalogItem extends StatefulWidget {

  final Item catalog;

  CatalogItem({required this.catalog});

  @override
  _CatalogItemState createState() => _CatalogItemState();
}

class _CatalogItemState extends State<CatalogItem> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return VxBox(
      child: InkWell(
        onTap: () {

          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(catalog: widget.catalog),
            ),
          );
        },
        child: Card(
          child: Row(
            children: [
              Hero(
                tag: Key(widget.catalog.id.toString()),
                  child: CatalogImage(image: widget.catalog.image)),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.catalog.name,
                        style: Theme.of(context).textTheme.headline4,
                          ),

                        // widget.catalog.name.text.bold.medium
                        //     .color(Theme.of(context).accentColor)
                          //  .make(),
                        Text(widget.catalog.desc,
                        style: Theme.of(context).textTheme.subtitle1,),

                      ],
                    ),
                    ButtonBar(
                      alignment: MainAxisAlignment.spaceBetween,
                      children: [
                        '\$${widget.catalog.price}'.text.medium.make(),


                              ElevatedButton(
                              onPressed: () {
                              },
                              child: 'Add to cart'.text.make(),

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