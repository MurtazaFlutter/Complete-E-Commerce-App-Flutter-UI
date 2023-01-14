import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
 final IconData iconData;
 final VoidCallback onTap;
  const RoundedIconButton({
    Key? key,
    required this.iconData,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProporionateScreenHeight(40),
      width: getProporionateScreenWidth(40),
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(iconData),
      ),
    );
  }
}
