import 'package:ecommerce_app/screens/login_success/login_success_body.dart';
import 'package:flutter/material.dart';

class LoginSuccessScreen extends StatelessWidget {
  static const String routeName = '/LoginSuccess';
  const LoginSuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginSuccessScreenBody(),
    );
  }
}
