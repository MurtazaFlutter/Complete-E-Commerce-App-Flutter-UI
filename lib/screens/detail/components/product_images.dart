import 'package:ecommerce_app/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../utils/size_config.dart';

class ProductImages extends StatefulWidget {
  final Product product;
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<ProductImages> createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProporionateScreenWidth(238),
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.asset(widget.product.images[selectedImage]),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(
              widget.product.images.length,
              (index) => buildSmallImages(index),
            ),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallImages(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: getProporionateScreenWidth(15)),
        padding: const EdgeInsets.all(8),
        width: getProporionateScreenWidth(48),
        height: getProporionateScreenHeight(48),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: selectedImage == index
                    ? kPrimaryColor
                    : Colors.transparent)),
        child: Image.asset(widget.product.images[index]),
      ),
    );
  }
}
