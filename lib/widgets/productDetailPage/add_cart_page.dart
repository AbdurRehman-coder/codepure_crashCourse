import 'package:crash_course/core/vxStore.dart';
import 'package:crash_course/moduls/cartModel.dart';
import 'package:crash_course/moduls/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class AddToCart extends StatelessWidget {
  final Item catalog;
   AddToCart({
    required this.catalog,
  });

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final _cart = (VxState.store as MyStore).cart;
    bool isInCart = _cart!.items.contains(catalog);
    return ElevatedButton(
      onPressed: () {
        if (!isInCart) {
         AddMutation(catalog);
        }
      },
      style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(context.accentColor),
          shape: MaterialStateProperty.all(
            StadiumBorder(),
          )),
      child: isInCart ? Icon(Icons.done) : 'Add'.text.xl.make(),
    );
  }
}