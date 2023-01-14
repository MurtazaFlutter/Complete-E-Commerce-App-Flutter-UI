import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProporionateScreenWidth(20)),
            child: Text(product.title,
                style: Theme.of(context).textTheme.headline6),
          ),
          SizedBox(
            height: getProporionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getProporionateScreenWidth(20),
              right: getProporionateScreenWidth(64),
            ),
            child: Text(
              product.description,
              maxLines: 3,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProporionateScreenWidth(20),
              vertical: 10,
            ),
            child: Row(
              children: const [
                Text(
                  'See More Details',
                  style: TextStyle(
                      color: kPrimaryColor, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 5,
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 12,
                  color: kPrimaryColor,
                )
              ],
            ),
          )
        ]);
  }
}
