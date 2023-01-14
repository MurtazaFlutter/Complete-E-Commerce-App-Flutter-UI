import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/screens/cart/cart_screen.dart';
import 'package:ecommerce_app/screens/detail/product_detail-screen.dart';

import 'package:ecommerce_app/screens/home/components/categories.dart';
import 'package:ecommerce_app/screens/home/components/icon_btn_with_counter.dart';
import 'package:ecommerce_app/screens/home/components/product_card.dart';
import 'package:ecommerce_app/screens/home/components/search_field.dart';
import 'package:ecommerce_app/screens/home/components/section_tile.dart';
import 'package:ecommerce_app/screens/home/components/special_offers.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import 'discount_banner.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProporionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProporionateScreenWidth(20)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SearchField(),
                IconButtonWithCounter(
                  svgPath: 'assets/icons/Cart Icon.svg',
                  onTap: (() {
                    Navigator.pushNamed(context, CartScreen.routeName);
                  }),
                ),
                IconButtonWithCounter(
                  svgPath: 'assets/icons/Bell.svg',
                  numOfItems: 3,
                  onTap: (() {}),
                ),
              ],
            ),
          ),
          SizedBox(
            height: getProporionateScreenHeight(30),
          ),
          const DiscountBanner(),
          SizedBox(
            height: getProporionateScreenHeight(30),
          ),
          const Categories(),
          SizedBox(
            height: getProporionateScreenHeight(30),
          ),
          SectionTile(text: 'Special for you', onTap: () {}),
          SizedBox(
            height: getProporionateScreenHeight(30),
          ),
          const SpecialOffers(),
          SizedBox(
            height: getProporionateScreenHeight(30),
          ),
          SectionTile(text: 'Popular Products', onTap: () {}),
          SizedBox(
            height: getProporionateScreenHeight(30),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...List.generate(
                  demoProducts.length,
                  (index) => ProductCard(
                    product: demoProducts[index],
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ProductDetailScreen.routeName,
                        arguments: demoProducts[index],
                      );
                    },
                  ),
                ),
                SizedBox(
                  width: getProporionateScreenWidth(20),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
