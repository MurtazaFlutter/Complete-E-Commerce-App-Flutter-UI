import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants.dart';
import '../../../utils/menu_state.dart';
import '../profile_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  final MenuState selectedMenu;
  const CustomBottomNavBar({
    required this.selectedMenu,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // const Color isActiveColor = Color(0xFFB6B6B6);
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: const Color(0xFFDADADA).withOpacity(0.15),
              offset: const Offset(0, -15),
            )
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, HomeScreen.routeName);
            },
            icon: SvgPicture.asset(
              'assets/icons/Shop Icon.svg',
              color: MenuState.home == selectedMenu
                  ? kPrimaryColor
                  : const Color(0xFFB6B6B6),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Heart Icon.svg',
              color: MenuState.favourite == selectedMenu
                  ? kPrimaryColor
                  : const Color(0xFFB6B6B6),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Chat bubble Icon.svg',
              color: MenuState.message == selectedMenu
                  ? kPrimaryColor
                  : const Color(0xFFB6B6B6),
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, ProfileScreen.routeName);
            },
            icon: SvgPicture.asset(
              'assets/icons/User Icon.svg',
              color: MenuState.profile == selectedMenu
                  ? kPrimaryColor
                  : const Color(0xFFB6B6B6),
            ),
          ),
        ],
      ),
    );
  }
}
