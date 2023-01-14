import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../models/product.dart';
import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class ProductCard extends StatelessWidget {
  final double width;
  final double aspectRatio;
  final Product product;
  final VoidCallback onTap;

  const ProductCard({
    this.width = 140,
    required this.onTap,
    this.aspectRatio = 1.02,
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProporionateScreenWidth(20)),
      child: GestureDetector(
        onTap: onTap,
        child: SizedBox(
          width: getProporionateScreenWidth(width),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: getProporionateScreenWidth(140),
                child: AspectRatio(
                  aspectRatio: aspectRatio,
                  child: Container(
                    padding: EdgeInsets.all(getProporionateScreenWidth(20)),
                    decoration: BoxDecoration(
                      color: kSecondaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(product.images[0]),
                  ),
                ),
              ),
              Text(
                product.title,
                maxLines: 2,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '\$${product.price}',
                    style: TextStyle(
                        fontSize: getProporionateScreenWidth(18),
                        color: kPrimaryColor,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: (() {}),
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      padding: EdgeInsets.all(getProporionateScreenWidth(8)),
                      width: getProporionateScreenHeight(28),
                      height: getProporionateScreenHeight(28),
                      decoration: BoxDecoration(
                        color: product.isFavourite
                            ? kPrimaryColor
                            : kSecondaryColor.withOpacity(0.1),
                        shape: BoxShape.circle,
                      ),
                      child: SvgPicture.asset(
                        'assets/icons/Heart Icon_2.svg',
                        color: product.isFavourite
                            ? const Color(0xFFFF4848)
                            : const Color(0xFFDBDEE4),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
