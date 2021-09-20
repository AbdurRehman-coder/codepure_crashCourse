// class for Image ( network image)
import 'package:crash_course/widgets/Theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  late final String image;

  CatalogImage({required this.image});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.network(
        image,
        fit: BoxFit.cover,

      ).box.rounded.p16.make().p8(),
    );
  }
}