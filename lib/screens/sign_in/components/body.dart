import 'package:ecommerce_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:ecommerce_app/screens/login_success/login_success_screen.dart';
import 'package:ecommerce_app/screens/sign_in/components/no_account_text.dart';
import 'package:ecommerce_app/screens/sign_in/components/sign_form_state.dart';
import 'package:ecommerce_app/screens/sign_in/components/social_media_buttons.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/utils/size_config.dart';

import '../../splashScreen/components/default_button.dart';

class SignInScreenBody extends StatefulWidget {
  const SignInScreenBody({super.key});

  @override
  State<SignInScreenBody> createState() => _SignInScreenBodyState();
}

class _SignInScreenBodyState extends State<SignInScreenBody> {
  bool remember = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProporionateScreenWidth(28)),
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.084,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(
                    fontSize: getProporionateScreenWidth(28),
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                'Sign in with your email and password \nor continue with Social Media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              const SignformState(),
              SizedBox(
                height: getProporionateScreenHeight(30),
              ),
              Row(
                children: [
                  Checkbox(
                      activeColor: kPrimaryColor,
                      checkColor: Colors.white,
                      value: remember,
                      onChanged: (value) {
                        setState(() {
                          remember = value!;
                        });
                      }),
                  const Text('Remember me'),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ForgotPasswordScreen.routeName);
                    },
                    child: const Text(
                      'Forgot Password',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: getProporionateScreenHeight(30),
              ),
              DefaultButton(
                text: 'Continue',
                onTap: () {
                  Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.084,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialMediaButtons(
                    icon: 'assets/icons/google-icon.svg',
                    onTap: () {},
                  ),
                  SocialMediaButtons(
                    icon: 'assets/icons/facebook-2.svg',
                    onTap: () {},
                  ),
                  SocialMediaButtons(
                    icon: 'assets/icons/twitter.svg',
                    onTap: () {},
                  )
                ],
              ),
              SizedBox(
                height: getProporionateScreenHeight(20),
              ),
              const NoAccountText(),
            ],
          ),
        ),
      ),
    ));
  }
}
