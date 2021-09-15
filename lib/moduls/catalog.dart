import 'package:flutter/material.dart';
class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id, required this.name, required this.desc,
        required this.price, required this.color, required this.image,});

}
class CatalogModul{
  final items = [
    Item(
        id: 1,
        name: 'iPhone 12 pro',
        desc: 'Apple iphone 12th generation',
        price: 999,
        color: '22066AFF',
        image: 'https://store.storeimages.cdn-apple.com/4982/as-images.apple.com/is/MHLN3?wid=1144&hei=1144&fmt=jpeg&qlt=80&op_usm=0.5,0.5&.v=1601352338000',
    ),
  ];
}