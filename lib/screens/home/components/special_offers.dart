import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';
import 'special_offer_card.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProporionateScreenWidth(20),
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SpecialOfferCard(
              imagePath: "assets/images/Image Banner 2.png",
              categoryName: "Smartphone",
              numOfBrands: 18,
              onTap: (() {}),
            ),
            SizedBox(
              width: getProporionateScreenWidth(20),
            ),
            SpecialOfferCard(
              imagePath: "assets/images/Image Banner 3.png",
              categoryName: "Fashion",
              numOfBrands: 24,
              onTap: (() {}),
            ),
          ],
        ),
      ),
    );
  }
}
