import 'package:crash_course/core/vxStore.dart';
import 'package:crash_course/moduls/cartModel.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.canvasColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: "Cart".text.make(),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [
              _CartList().p32().expand(),
              _CartTotal(),
            ],
          ),
      ),

    );
  }
}

class _CartTotal extends StatelessWidget {
  final CartModel? _cart = (VxState.store as MyStore).cart;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxBuilder(
              mutations: {RemoveMutation},
          builder: (context, _ , vxStatus) {
                return  "\$${_cart!.totalPrice}"
              .text
              .xl5
              .color(context.theme.accentColor)
              .make();
          } ),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: "Buying not supported yet.".text.make(),
              ));
            },
            style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(context.theme.buttonColor)),
            child: "Buy".text.white.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel? _cart = (VxState.store as MyStore).cart;
    return _cart!.items.isEmpty
        ? "Nothing to show".text.xl3.makeCentered()
        : ListView.builder(
          shrinkWrap: true,
      itemCount: _cart.items.length,
      itemBuilder: (context, index) => ListTile(
        leading: Icon(Icons.done),
        trailing: IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: () {
           RemoveMutation(_cart.items[index]);

          },
        ),
        title: _cart.items[index].name.text.make(),
      ),
    );
  }
}