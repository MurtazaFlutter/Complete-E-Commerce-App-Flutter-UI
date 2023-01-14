import 'package:ecommerce_app/screens/cart/components/cart_screen_body.dart';
import 'package:flutter/material.dart';

import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Your Cart',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: const CartScreenBody(),
      bottomNavigationBar: const CheckOutCard(),
    );
  }
}
