import 'package:ecommerce_app/screens/detail/components/color_dots.dart';
import 'package:ecommerce_app/screens/detail/components/rounded_icon_button.dart';
import 'package:flutter/material.dart';

import '../../../models/product.dart';
import '../../../utils/size_config.dart';

class SelectColor extends StatelessWidget {
  const SelectColor({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    int selectedcolor = 2;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProporionateScreenWidth(20)),
      child: Row(
        children: [
          ...List.generate(
            product.colors.length,
            (index) => ColorDots(
              color: product.colors[index],
              isSelected: selectedcolor == index,
            ),
          ),
          const Spacer(),
          RoundedIconButton(
            iconData: Icons.remove,
            onTap: () {},
          ),
          RoundedIconButton(
            iconData: Icons.add,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
