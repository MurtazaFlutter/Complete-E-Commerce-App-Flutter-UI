// ignore: file_names
import 'package:ecommerce_app/models/product.dart';

class Cart {
  final Product product;
  final int numOfItems;
  Cart({
    required this.product,
    required this.numOfItems,
  });
}

List<Cart> demoCart = [
  Cart(product: demoProducts[0], numOfItems: 2),
  Cart(product: demoProducts[1], numOfItems: 2),
  Cart(product: demoProducts[3], numOfItems: 2),
];
