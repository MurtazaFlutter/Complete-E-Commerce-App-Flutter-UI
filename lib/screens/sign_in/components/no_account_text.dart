import 'package:ecommerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have a account?',
          style: TextStyle(
            fontSize: getProporionateScreenWidth(16),
          ),
        ),
        SizedBox(
          width: getProporionateScreenWidth(5),
        ),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, SignUpScreen.routeName);
          },
          child: Text(
            'Sign Up',
            style: TextStyle(
                fontSize: getProporionateScreenWidth(16), color: kPrimaryColor),
          ),
        )
      ],
    );
  }
}
