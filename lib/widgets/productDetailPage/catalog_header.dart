import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SafeArea(
      child: Column(
        children: [
          "Catalog App".text.textStyle(context.textTheme.headline2!).make(),
          'Trending Proguct'
              .text
              .textStyle(context.textTheme.headline4!)
              .medium
              .make(),
        ],
      ).py16(),
    );
  }
}