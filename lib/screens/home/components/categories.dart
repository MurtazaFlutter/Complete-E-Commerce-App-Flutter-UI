import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';
import 'categories_card.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": 'assets/icons/Flash Icon.svg', "text": "Flash Deal"},
      {"icon": 'assets/icons/Bill Icon.svg', "text": "Bill"},
      {"icon": 'assets/icons/Game Icon.svg', "text": "Game"},
      {"icon": 'assets/icons/Gift Icon.svg', "text": "Daily Gift"},
      {"icon": 'assets/icons/Discover.svg', "text": "More"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProporionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
              categories.length,
              (index) => CategoriesCard(
                  icon: categories[index]["icon"],
                  text: categories[index]["text"],
                  onTap: () {}))
        ],
      ),
    );
  }
}
