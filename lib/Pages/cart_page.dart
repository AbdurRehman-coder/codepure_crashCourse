import 'package:crash_course/moduls/catalog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       title: 'Cart'.text
           .textStyle(context.textTheme.headline4!)
           .make(),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Placeholder().p16().expand(),
          _CartTotal(),
        ],
      ),
    );
  }
}

//Class for total price of items in cart
class _CartTotal extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 200,

        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            '\$${999}'.text.textStyle(context.textTheme.headline4!).make(),
            // ElevatedButton(
            //   style: ElevatedButton.styleFrom(
            //     shape: StadiumBorder(),
            //     //fixedSize: Size.fromWidth(20)
            //   ),
            //   onPressed: () {},
            //   child: 'Buy'.text.medium.make(),
            // ),
            TextButton(
              onPressed: () {

              },
              child: 'Buy'.text.make(),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    Theme
                        .of(context)
                        .accentColor,

                  )
              ),
            ),

          ],
        )
    );
  }
}