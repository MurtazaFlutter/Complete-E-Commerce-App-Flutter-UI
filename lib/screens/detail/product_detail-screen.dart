import 'package:ecommerce_app/models/product.dart';
import 'package:ecommerce_app/screens/detail/components/custom_app_bar.dart';
import 'package:ecommerce_app/screens/detail/product_screen_body.dart';
import 'package:flutter/material.dart';

class ProductDetailScreen extends StatelessWidget {
  static String routeName = '/detail';
  const ProductDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product args = ModalRoute.of(context)!.settings.arguments as Product;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(AppBar().preferredSize.height),
        child: CustomAppBar(
          rating: args.rating,
        ),
      ),
      backgroundColor: const Color(0xFFF5F6F9),
      body: ProductDetailScreenBody(
        product: args,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
