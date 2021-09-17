import 'package:crash_course/moduls/catalog.dart';
import 'package:flutter/material.dart';
class GridWidget extends StatelessWidget{
  Item gridItem;
  GridWidget({required this.gridItem});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Card(
      child: GridTile(
        header: Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text(gridItem.name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),),
        ),
        child: Image.network(gridItem.image),
        footer: Container(
    decoration: BoxDecoration(
    color: Colors.indigoAccent,
    borderRadius: BorderRadius.circular(10),
    ),
    child: Text(gridItem.price.toString(),
    style: TextStyle(
    color: Colors.white,
    fontSize: 20,
    ),),
    ),
      ),

    );
  }
}