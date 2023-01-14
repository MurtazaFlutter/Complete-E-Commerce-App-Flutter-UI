import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'rounded_icon_button.dart';

class CustomAppBar extends StatelessWidget {
  final double rating;
  const CustomAppBar({
    Key? key,
    required this.rating,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: getProporionateScreenHeight(20),
          vertical: getProporionateScreenWidth(10)),
      child: Row(
        children: [
          RoundedIconButton(
              iconData: Icons.arrow_back_ios,
              onTap: () {
                Navigator.pop(context);
              }),
          const Spacer(),
          Container(
            height: getProporionateScreenHeight(35),
            width: getProporionateScreenWidth(60),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(14),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  rating.toString(),
                  style: const TextStyle(fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 5,
                ),
                SvgPicture.asset('assets/icons/Star Icon.svg')
              ],
            ),
          )
        ],
      ),
    );
  }
}
