import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: getProporionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
          horizontal: getProporionateScreenWidth(20),
          vertical: getProporionateScreenHeight(15)),
      height: 90,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0xFF4A3298),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Text.rich(TextSpan(
          text: 'A Winter Surprise\n',
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
                text: 'Cashback 20%',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ))
          ])),
    );
  }
}
