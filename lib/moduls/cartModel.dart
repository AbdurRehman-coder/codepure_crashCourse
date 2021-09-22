import 'package:crash_course/moduls/catalog.dart';

class CartModel {
  late CatalogModel _catalog;

  //List of item id's
  List<Item> itemIds = [];

  //Getter for getting value of _catalog
  CatalogModel get catalogValue => _catalog;

// Setter to set value of _catalog
  set catalogValue(newValue) {
    _catalog = newValue;

    // item mapping
    Item getByIds(int id) =>
        itemIds.firstWhere((element) => element.id == id, orElse: null);
  }

//Add items itemIds List
  void add(item) {
    itemIds.add(item.id);
  }
  //Remove items from itemIds List
void remove(item){
    itemIds.remove(item.id);
}
}