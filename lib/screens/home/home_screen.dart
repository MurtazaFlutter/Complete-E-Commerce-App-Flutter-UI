import 'package:ecommerce_app/screens/home/components/home_screen_body.dart';
import 'package:ecommerce_app/screens/profile/components/custom_nav_bar.dart';
import 'package:ecommerce_app/utils/menu_state.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeScreenBody(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
