import 'package:ecommerce_app/screens/profile/components/profile_screen_body.dart';
import 'package:flutter/material.dart';

import '../../utils/menu_state.dart';
import 'components/custom_nav_bar.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Profile'),
      ),
      body: const ProfileScreenBody(),
      bottomNavigationBar: const CustomBottomNavBar(
        selectedMenu: MenuState.profile,
      ),
    );
  }
}
