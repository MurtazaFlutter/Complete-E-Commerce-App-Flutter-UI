import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../splashScreen/components/default_button.dart';

class LoginSuccessScreenBody extends StatelessWidget {
  const LoginSuccessScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: SizeConfig.screenHeight * 0.04,
        ),
        Image.asset(
          'assets/images/success.png',
        ),
        SizedBox(
          height: SizeConfig.screenHeight * 0.08,
        ),
        Text(
          'Login Success',
          style: TextStyle(
            fontSize: getProporionateScreenWidth(30),
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        SizedBox(
            width: SizeConfig.screenWidth * 0.6,
            child: DefaultButton(
                text: 'Back to Home',
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                })),
        const Spacer(),
      ],
    );
  }
}
