import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class SectionTile extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const SectionTile({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProporionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getProporionateScreenWidth(18),
              color: Colors.black,
            ),
          ),
          GestureDetector(
              onTap: onTap,
              child: const Text(
                'See More',
              ))
        ],
      ),
    );
  }
}
