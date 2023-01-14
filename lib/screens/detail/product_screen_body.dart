import 'package:ecommerce_app/screens/splashScreen/components/default_button.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/models/product.dart';
import 'components/product_images.dart';
import 'components/product_description.dart';
import 'components/select_color.dart';
import 'components/top_rounded_container.dart';

class ProductDetailScreenBody extends StatelessWidget {
  final Product product;
  const ProductDetailScreenBody({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    // final Product args = ModalRoute.of(context)!.settings.arguments as Product;
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(product: product),
                TopRoundedContainer(
                    color: const Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        SelectColor(product: product),
                        TopRoundedContainer(
                            color: Colors.white,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 0.15,
                                right: SizeConfig.screenWidth * 0.15,
                                top: getProporionateScreenHeight(15),
                                bottom: getProporionateScreenWidth(40),
                              ),
                              child: DefaultButton(
                                  text: 'Add to Cart', onTap: () {}),
                            ))
                      ],
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
