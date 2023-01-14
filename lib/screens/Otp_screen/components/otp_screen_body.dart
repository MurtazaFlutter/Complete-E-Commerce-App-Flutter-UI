import 'package:ecommerce_app/screens/Otp_screen/components/otp_builder.dart';
import 'package:ecommerce_app/screens/home/home_screen.dart';
import 'package:ecommerce_app/utils/constants.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../splashScreen/components/default_button.dart';

class OTPScreenBody extends StatelessWidget {
  const OTPScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              Text(
                'OTP Verification',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProporionateScreenWidth(24),
                ),
              ),
              const Text('We sent your code to +92347253***'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('This code will expired in '),
                  TweenAnimationBuilder(
                    tween: Tween(begin: 30.0, end: 0),
                    duration: const Duration(seconds: 30),
                    builder: ((context, value, child) {
                      return Text(
                        '00: ${value.toInt()}',
                        style: const TextStyle(color: kPrimaryColor),
                      );
                    }),
                    onEnd: (() {}),
                  )
                ],
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              const OTPBuilder(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.15,
              ),
              DefaultButton(
                text: 'Continue',
                onTap: () {
                  Navigator.pushNamed(context, HomeScreen.routeName);
                },
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
              ),
              GestureDetector(
                onTap: (() {}),
                child: const Text(
                  'Resend OTP Code',
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
