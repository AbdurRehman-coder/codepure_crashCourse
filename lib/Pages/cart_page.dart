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
        title: 'Cart'.text.textStyle(context.textTheme.headline4!).make(),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CartList().p16().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

// List of Cart items
class CartList extends StatefulWidget{
  Cart createState() => Cart();

}
class Cart extends State<CartList>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 7,
        itemBuilder: (context, index){
          return ListTile(
            leading: Icon(Icons.done,
            size: 20,
            color: Theme.of(context).accentColor,
            ),
            title: Text('item$index',
            style: Theme.of(context).textTheme.bodyText1,
            ),
            trailing: IconButton(
              icon: Icon(Icons.remove_circle_outline,
              color: Theme.of(context).accentColor,),
              onPressed: () {  },
            ),
          );
        }
    );
  }
}

//Class for total price of items in cart
class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 100,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            '\$${999}'.text.textStyle(context.textTheme.headline4!).make(),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: 'Buying is not available'
                        .text.textStyle(context.textTheme.headline4!).black.make(),
                  backgroundColor: Theme.of(context).primaryColor,
                  shape: BeveledRectangleBorder(),
                  duration: Duration(seconds: 2),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),

                ),

                );
              },
              child: 'Buy'.text.make(),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  ),
                  foregroundColor: MaterialStateProperty.all(
                    Theme.of(context).cardColor,
                  ),
                  backgroundColor: MaterialStateProperty.all(
                    Theme.of(context).accentColor,
                  )),
            ),
          ],
        ));
  }
}