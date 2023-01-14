import 'package:flutter/material.dart';

import '../../../models/Cart.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class CartItemCard extends StatelessWidget {
  final Cart cart;
  const CartItemCard({
    Key? key,
    required this.cart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: getProporionateScreenWidth(80),
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15)),
              child: Image.asset(cart.product.images[0]),
            ),
          ),
        ),
        SizedBox(
          width: getProporionateScreenWidth(20),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart.product.title,
              maxLines: 2,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text.rich(
              TextSpan(
                  text: '\$${demoCart[0].product.price}',
                  style: const TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w600,
                  ),
                  children: [
                    TextSpan(
                        text: 'x${cart.numOfItems}',
                        style: const TextStyle(color: kTextColor))
                  ]),
            )
          ],
        ),
      ],
    );
  }
}
