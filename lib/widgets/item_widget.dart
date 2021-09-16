
import 'package:crash_course/moduls/catalog.dart';
import 'package:crash_course/widgets/Theme.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  Item item;

  ItemWidget({required this.item}) ;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        shadowColor: Colors.black54,
        child: ListTile(
          leading: Image.network(item.image),
          title: Text(item.name,
          textScaleFactor: 1.4,
          style: TextStyle(
          // fontSize: 50,

          ),
          ),
          subtitle: Text(item.desc,
          textScaleFactor: 1.1,
          ),
          trailing: Text('\$${item.price}',
          textScaleFactor: 1.4,
          style: TextStyle(
            color: Colors.indigoAccent
          ),),
        ),
      ),
    );
  }
}