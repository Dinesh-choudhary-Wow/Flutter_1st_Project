import 'package:flutter_newp/models/cart.dart';
import 'package:flutter_newp/models/catalog.dart';
import 'package:flutter_newp/widgets/home_widgets/catalog_header.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  CatalogModel catalog;
  CartModel cart;

  MyStore() {
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}
