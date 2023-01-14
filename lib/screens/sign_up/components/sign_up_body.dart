import 'package:ecommerce_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:ecommerce_app/screens/sign_in/components/social_media_buttons.dart';
import 'package:ecommerce_app/screens/sign_in/components/text_form_field.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../splashScreen/components/default_button.dart';

class SignUpScreenBody extends StatelessWidget {
  const SignUpScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProporionateScreenHeight(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.01,
              ),
              Text(
                'Register Account',
                style: TextStyle(
                  fontSize: getProporionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  height: 1.5,
                ),
              ),
              const Text(
                'Enter your complete details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.06,
              ),
              const TextFormFieldWidget(
                obsecureText: false,
                labelText: 'Email',
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your email',
                iconPath: 'assets/icons/Mail.svg',
              ),
              SizedBox(
                height: getProporionateScreenHeight(30),
              ),
              const TextFormFieldWidget(
                obsecureText: true,
                labelText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                hintText: 'Enter your password',
                iconPath: 'assets/icons/Lock.svg',
              ),
              SizedBox(
                height: getProporionateScreenHeight(30),
              ),
              const TextFormFieldWidget(
                obsecureText: true,
                labelText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                hintText: 'Confirm your password',
                iconPath: 'assets/icons/Lock.svg',
              ),
              SizedBox(
                height: getProporionateScreenHeight(30),
              ),
              DefaultButton(
                  text: 'Continue',
                  onTap: () {
                    Navigator.pushNamed(
                        context, CompleteProfileScreen.routeName);
                  }),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
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
                  ),
                  SizedBox(
                    height: getProporionateScreenHeight(20),
                  ),
                ],
              ),
              SizedBox(
                height: getProporionateScreenHeight(20),
              ),
              const Text(
                'By continuing your confirm that you agree \nwith our Terms and Conditions',
                textAlign: TextAlign.center,
              )
            ],
          ),
        ),
      ),
    );
  }
}
