import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.screenWidth * 0.6,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: ((value) {}),
        decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: 'Search Prodcuts',
            prefixIcon: const Icon(Icons.search),
            contentPadding: EdgeInsets.symmetric(
              horizontal: getProporionateScreenWidth(20),
              vertical: getProporionateScreenHeight(9),
            )),
      ),
    );
  }
}
