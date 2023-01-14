import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaButtons extends StatelessWidget {
  final String icon;
  final VoidCallback onTap;
  const SocialMediaButtons({
    Key? key,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: getProporionateScreenWidth(8)),
        padding: EdgeInsets.all(getProporionateScreenWidth(5)),
        height: getProporionateScreenHeight(40),
        width: getProporionateScreenWidth(40),
        decoration: const BoxDecoration(
          color: Color(0xfff5f6f9),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
