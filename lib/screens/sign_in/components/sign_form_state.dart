import 'package:ecommerce_app/screens/sign_in/components/text_form_field.dart';
import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

class SignformState extends StatefulWidget {
  const SignformState({Key? key}) : super(key: key);

  @override
  State<SignformState> createState() => _SignformStateState();
}

class _SignformStateState extends State<SignformState> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          const TextFormFieldWidget(
            labelText: 'Email',
            hintText: 'Enter your email',
            iconPath: 'assets/icons/Mail.svg',
            obsecureText: false,
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(
            height: getProporionateScreenHeight(20),
          ),
          const TextFormFieldWidget(
            labelText: 'Password',
            hintText: 'Enter your password',
            iconPath: 'assets/icons/Lock.svg',
            obsecureText: true,
            keyboardType: TextInputType.visiblePassword,
          ),
        ],
      ),
    );
  }
}
