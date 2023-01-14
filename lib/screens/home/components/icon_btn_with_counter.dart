import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconButtonWithCounter extends StatelessWidget {
  final String svgPath;
  final int numOfItems;
  final VoidCallback onTap;

  const IconButtonWithCounter({
    Key? key,
    required this.svgPath,
    this.numOfItems = 0,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        children: [
          SvgPicture.asset(svgPath),
          if (numOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: getProporionateScreenHeight(16),
                width: getProporionateScreenWidth(16),
                decoration: BoxDecoration(
                    color: const Color(0xFFFF4848),
                    shape: BoxShape.circle,
                    border: Border.all(
                      width: 1.5,
                      color: Colors.white,
                    )),
                child: Center(
                  child: Text(
                    numOfItems.toString(),
                    style: TextStyle(
                        fontSize: getProporionateScreenWidth(10),
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        height: 1),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}
