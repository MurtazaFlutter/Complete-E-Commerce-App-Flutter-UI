import 'package:ecommerce_app/models/Cart.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'cart_item_card.dart';

class CartScreenBody extends StatefulWidget {
  const CartScreenBody({super.key});

  @override
  State<CartScreenBody> createState() => _CartScreenBodyState();
}

class _CartScreenBodyState extends State<CartScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProporionateScreenWidth(20)),
      child: ListView.builder(
          itemCount: demoCart.length,
          itemBuilder: ((context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  vertical: getProporionateScreenHeight(10)),
              child: Dismissible(
                direction: DismissDirection.endToStart,
                key: Key(demoCart[index].product.id.toString()),
                background: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE6E6),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      const Spacer(),
                      SvgPicture.asset('assets/icons/Trash.svg')
                    ],
                  ),
                ),
                onDismissed: ((direction) {
                  setState(() {
                    demoCart.removeAt(index);
                  });
                }),
                child: CartItemCard(
                  cart: demoCart[index],
                ),
              ),
            );
          })),
    );
  }
}
