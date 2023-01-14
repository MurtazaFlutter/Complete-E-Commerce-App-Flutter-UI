import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class ColorDots extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDots({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: const EdgeInsets.all(3),
        height: getProporionateScreenHeight(40),
        width: getProporionateScreenWidth(40),
        decoration: BoxDecoration(
           
            shape: BoxShape.circle,
            border: Border.all(
                color: isSelected ? kPrimaryColor : Colors.transparent)),
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
