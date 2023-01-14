import 'package:ecommerce_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'profile_pic.dart';

class ProfileScreenBody extends StatefulWidget {
  const ProfileScreenBody({Key? key}) : super(key: key);

  @override
  State<ProfileScreenBody> createState() => _ProfileScreenBodyState();
}

class _ProfileScreenBodyState extends State<ProfileScreenBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        ProfilePic(),
        SizedBox(
          height: 20,
        ),
        ProfileMenu(
          icon: 'assets/icons/User Icon.svg',
          text: 'My Account',
        ),
        ProfileMenu(
          icon: 'assets/icons/Bell.svg',
          text: 'Notifications',
        ),
        ProfileMenu(
          icon: 'assets/icons/Settings.svg',
          text: 'Settings',
        ),
        ProfileMenu(
          icon: 'assets/icons/Question mark.svg',
          text: 'Help Center',
        ),
        ProfileMenu(
          icon: 'assets/icons/Log out.svg',
          text: 'Log Out',
        ),
      ],
    );
  }
}

class ProfileMenu extends StatelessWidget {
  final String icon;
  final String text;

  /// final VoidCallback onTap;
  const ProfileMenu({
    Key? key,
    required this.icon,
    required this.text,
    // required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ),
      child: SizedBox(
        height: 55,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              backgroundColor: const Color(0xFFF5F6F9),
            ),
            onPressed: () {},
            child: Row(
              children: [
                SvgPicture.asset(
                  icon,
                  color: kPrimaryColor,
                  width: 22,
                ),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: Text(
                  text,
                  style: Theme.of(context).textTheme.bodyText1,
                )),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                )
              ],
            )),
      ),
    );
  }
}
