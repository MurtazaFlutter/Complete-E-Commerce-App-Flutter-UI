import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class SplashContent extends StatelessWidget {
  final String text;
  final String image;
  const SplashContent({super.key, 
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Spacer(),
        Text(
          'TOKOTO',
          style: TextStyle(
              fontSize: getProporionateScreenWidth(36),
              color: kPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        const Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProporionateScreenHeight(265),
          width: getProporionateScreenWidth(235),
        ),
      ],
    );
  }
}
