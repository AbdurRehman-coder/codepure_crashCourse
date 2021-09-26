// import 'package:crash_course/Pages/homeScreen.dart';
// import 'package:crash_course/Pages/product_detail_page.dart';
// import 'package:crash_course/moduls/catalog.dart';
// import 'package:crash_course/widgets/productDetailPage/add_cart_page.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:velocity_x/velocity_x.dart';
// import 'add_cart_page.dart';
//
// import 'catalog_image.dart';
//
// class CatalogList extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return ListView.builder(
//       itemCount: CatalogModel.items!.length,
//       itemBuilder: (BuildContext context, int index) {
//         Item catalog = CatalogModel.items![index];
//         return CatalogItem(
//           catalog: catalog,
//         );
//       },
//     );
//   }
// }
//
// class CatalogItem extends StatefulWidget {
//    Item catalog;
//
//   CatalogItem({required this.catalog});
//
//   @override
//   _CatalogItemState createState() => _CatalogItemState();
// }
//
// class _CatalogItemState extends State<CatalogItem> {
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return VxBox(
//       child: InkWell(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => ProductDetailPage(catalog: widget.catalog),
//             ),
//           );
//         },
//         child: Card(
//           child: Row(
//             children: [
//               Hero(
//                   tag: Key(widget.catalog.id.toString()),
//                   child: CatalogImage(image: widget.catalog.image)),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           widget.catalog.name,
//                           style: Theme.of(context).textTheme.headline4,
//                         ),
//
//                         // widget.catalog.name.text.bold.medium
//                         //     .color(Theme.of(context).accentColor)
//                         //  .make(),
//                         Text(
//                           widget.catalog.desc,
//                           style: Theme.of(context).textTheme.subtitle1,
//                         ),
//                       ],
//                     ),
//                     ButtonBar(
//                       buttonPadding: EdgeInsets.zero,
//                       alignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         '\$${widget.catalog.price}'
//                             .text
//                             .textStyle(context.textTheme.headline4!)
//                             .make(),
//                         //Add to Cart Button Class Calling here
//                         AddToCart(catalog: widget.catalog),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     ).square(150).make();
//   }
//}









import 'package:crash_course/Pages/product_detail_page.dart';
import 'package:crash_course/moduls/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'add_cart_page.dart';

import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return !context.isMobile ?
    GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
        ),
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    )
    :
      ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items!.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items![index];
        return InkWell(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProductDetailPage(catalog: catalog),
            ),
          ),
          child: CatalogItem(catalog: catalog),
        );
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({required this.catalog});
  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(
        children: [
          Hero(
            tag: Key(catalog.id.toString()),
            child: CatalogImage(
              image: catalog.image,
            ),
          ),

          Expanded(
            child: Column(

                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    catalog.name.text.lg.color(context.accentColor).bold.make(),
                    catalog.desc.text.textStyle(context.textTheme.bodyText1!).make(),
                    10.heightBox,

                 ButtonBar(
                        alignment: MainAxisAlignment.spaceBetween,
                        buttonPadding: EdgeInsets.zero,
                        children: [
                          "\$${catalog.price}".text.bold.color(context.accentColor).xl.make(),
                          AddToCart(catalog: catalog),
                        ],
                      ).pOnly(right: 8.0),

                  ],
                ),
          ),
        ],
      ),
    ).color(context.cardColor).rounded.square(160).make().py16();
  }
}