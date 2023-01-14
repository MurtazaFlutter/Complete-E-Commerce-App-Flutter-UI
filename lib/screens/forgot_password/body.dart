import 'package:ecommerce_app/screens/sign_in/components/no_account_text.dart';
import 'package:ecommerce_app/screens/sign_in/components/text_form_field.dart';
import 'package:ecommerce_app/screens/sign_up/sign_up_screen.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../splashScreen/components/default_button.dart';

class ForgotScreenBody extends StatelessWidget {
  const ForgotScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProporionateScreenWidth(28),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.04,
              ),
              Text(
                'Forgot Password',
                style: TextStyle(
                  fontSize: getProporionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const Text(
                'Please enter your email and we will send \nyou a link to return to your account',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              const TextFormFieldWidget(
                obsecureText: false,
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your email',
                iconPath: 'assets/icons/Mail.svg',
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              DefaultButton(
                  text: 'Continue',
                  onTap: () {
                    Navigator.pushNamed(context, SignUpScreen.routeName);
                  }),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              const NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
