import 'package:ecommerce_app/screens/Otp_screen/otp_screen.dart';
import 'package:ecommerce_app/screens/sign_in/components/text_form_field.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../splashScreen/components/default_button.dart';

class CompleteProfileScreenBody extends StatelessWidget {
  const CompleteProfileScreenBody({super.key});
  // void _saveForm() {
  //   var form;
  //   final isValid = form.currentState!.validate();
  //   if (!isValid) {
  //     return;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProporionateScreenWidth(30)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                'Complete Profile',
                style: TextStyle(
                    fontSize: getProporionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              const Text(
                'Complete your details or continue \nwith social media',
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.05,
              ),
              const TextFormFieldWidget(
                  obsecureText: false,
                  labelText: 'First Name',
                  keyboardType: TextInputType.name,
                  hintText: 'Enter your first name',
                  iconPath: 'assets/icons/User.svg'),
              SizedBox(
                height: getProporionateScreenHeight(40),
              ),
              const TextFormFieldWidget(
                  obsecureText: false,
                  labelText: 'Last Name',
                  keyboardType: TextInputType.name,
                  hintText: 'Enter your last name',
                  iconPath: 'assets/icons/User.svg'),
              SizedBox(
                height: getProporionateScreenHeight(40),
              ),
              const TextFormFieldWidget(
                  obsecureText: false,
                  labelText: 'Phone Number',
                  keyboardType: TextInputType.phone,
                  hintText: 'Enter your phone number',
                  iconPath: 'assets/icons/Phone.svg'),
              SizedBox(
                height: getProporionateScreenHeight(40),
              ),
              const TextFormFieldWidget(
                  obsecureText: false,
                  labelText: 'Address',
                  keyboardType: TextInputType.streetAddress,
                  hintText: 'Enter your address',
                  iconPath: 'assets/icons/Location point.svg'),
              SizedBox(
                height: getProporionateScreenHeight(40),
              ),
              DefaultButton(
                  text: 'Continue',
                  onTap: () {
                    Navigator.pushNamed(context, OTPScreen.routeName);
                  }),
              SizedBox(
                height: getProporionateScreenHeight(30),
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
