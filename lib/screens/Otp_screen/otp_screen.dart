import 'package:ecommerce_app/screens/Otp_screen/components/otp_screen_body.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatelessWidget {
  static String routeName = "/otp";
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('OTP Verification'),
      ),
      body: const OTPScreenBody(),
    );
  }
}
