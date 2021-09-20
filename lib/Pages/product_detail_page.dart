import 'package:crash_course/moduls/catalog.dart';
import 'package:crash_course/widgets/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetailPage extends StatelessWidget {
  final Item catalog;

  const ProductDetailPage({Key? key, required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).cardColor,
      bottomNavigationBar: Container(
        color: Theme.of(context).canvasColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            '\$${catalog.price}'
                .text
                .textStyle(context.textTheme.headline4!)
                .make(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: StadiumBorder(),
                //fixedSize: Size.fromWidth(20)
              ),
              onPressed: () {},
              child: 'Buy'.text.medium.make(),
            ),
          ],
        ),
      ),
      appBar: AppBar(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              color: Theme.of(context).cardColor,
              height: 300,
              child: Hero(
                  tag: Key(catalog.id.toString()),
                  transitionOnUserGestures: true,
                  child: Image.network(catalog.image)),
            ).py16(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: VxArc(
                  height: 25,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: Theme.of(context).canvasColor,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          catalog.name.text
                              .textStyle(context.textTheme.headline2!)
                              .xl3
                              .make(),
                          5.heightBox,
                          catalog.desc.text
                              .textStyle(context.textTheme.bodyText1!)
                              .xl
                              .make(),
                          16.heightBox,
                          Text(
                            'Qua procella, illo eternus semel cui propello Arma iniquus'
                            ' tribuo legentis victum tergo victor repeto, multus. Qui volup amita porro '
                            'perseverantia Positus lacunar qui praecepio St. Incertus surgo vires nolo.',
                            style: Theme.of(context).textTheme.subtitle1,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ]),
    );
  }
}