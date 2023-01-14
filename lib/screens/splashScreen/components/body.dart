import 'package:ecommerce_app/utils/constants.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce_app/screens/sign_in/sign_in_screen.dart';
import 'package:ecommerce_app/screens/splashScreen/components/splash_content.dart';
import 'package:ecommerce_app/utils/size_config.dart';

import 'default_button.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      'text': 'Welcome to Tokoto, Lets shop!',
      'image': 'assets/images/splash_1.png',
    },
    {
      'text':
          'We help people connect with store \naround Unitd States of America',
      'image': 'assets/images/splash_2.png',
    },
    {
      'text': 'We show easy way to shop. \nJust stay at home with us',
      'image': 'assets/images/splash_3.png',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child: PageView.builder(
              onPageChanged: (value) {
                setState(() {
                  currentPage = value;
                });
              },
              itemCount: splashData.length,
              itemBuilder: ((context, index) {
                return SplashContent(
                  text: splashData[index]['text'].toString(),
                  image: splashData[index]['image'].toString(),
                );
              }),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: getProporionateScreenHeight(28),
              ),
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      splashData.length,
                      (index) => buildDots(
                        index: index,
                      ),
                    ),
                  ),
                  const Spacer(),
                  DefaultButton(
                    text: 'Continue',
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        SignInScreen.routeName,
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
          const Spacer(),
        ],
      ),
    ));
  }

  buildDots({required int index}) {
    return AnimatedContainer(
      margin: const EdgeInsets.only(right: 5),
      duration: kAnimationDuration,
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
