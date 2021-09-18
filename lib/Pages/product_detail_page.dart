import 'package:crash_course/moduls/catalog.dart';
import 'package:crash_course/widgets/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetailPage extends StatelessWidget {
  final Item catalog;
  const ProductDetailPage({Key? key, required this.catalog})
        : assert (catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: MyTheme.creamColor,
        child: ButtonBar(

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
      ),
      appBar: AppBar(
      ),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 300,
              child: Hero(
                  tag: Key(catalog.id.toString()),
                  transitionOnUserGestures: true,
                  child: Image.network(catalog.image)),
            ).py16(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: VxArc(
                  height: 25,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                    color: MyTheme.creamColor,
                    child: Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,

                        children: [
                          catalog.name.text.bold.xl3
                              .color(Colors.blueGrey)
                              .make(),
                          catalog.desc.text
                              .textStyle(context.captionStyle!)
                              .xl
                              .make(),
                          10.heightBox,

                          Text('Qua procella, illo eternus semel cui propello Arma iniquus'
                              ' tribuo legentis victum tergo victor repeto, multus. Qui volup amita porro '
                              'perseverantia Positus lacunar qui praecepio St. Incertus surgo vires nolo.').text.medium.make()




                        ],
                      ),
                    ),

                  ),
                ),
              ),
            ),
          ]
      ),

    );
  }
}