import 'package:crash_course/moduls/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  Item item;

  ItemWidget({required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Card(
        shadowColor: Colors.red,
        child: ListTile(
          leading: Image.network(item.image),
          title: Text(item.name),
          subtitle: Text(item.desc),
          trailing: Text('\$${item.price}'),
        ),
      ),
    );
  }
}