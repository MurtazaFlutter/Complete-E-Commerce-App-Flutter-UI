import 'package:flutter/material.dart';

import '../../../utils/size_config.dart';

class SpecialOfferCard extends StatelessWidget {
  final String imagePath;
  final String categoryName;
  final int numOfBrands;
  final VoidCallback onTap;

  const SpecialOfferCard({
    required this.imagePath,
    required this.categoryName,
    required this.numOfBrands,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: getProporionateScreenWidth(185),
        height: getProporionateScreenHeight(100),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Stack(
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.cover,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      const Color(0xFF343434).withOpacity(0.4),
                      const Color(0xFF343434).withOpacity(0.15),
                    ])),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProporionateScreenWidth(15),
                  vertical: getProporionateScreenHeight(10),
                ),
                child: Text.rich(TextSpan(
                    style: const TextStyle(color: Colors.white),
                    children: [
                      TextSpan(
                          text: "$categoryName\n",
                          style: TextStyle(
                              fontSize: getProporionateScreenWidth(18),
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: "$numOfBrands Brands",
                      )
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
