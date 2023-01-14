import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants.dart';

class OTPBuilder extends StatefulWidget {
  const OTPBuilder({
    Key? key,
  }) : super(key: key);

  @override
  State<OTPBuilder> createState() => _OTPBuilderState();
}

class _OTPBuilderState extends State<OTPBuilder> {
  late FocusNode pin2FocusNode;
  late FocusNode pin3FocusNode;
  late FocusNode pin4FocusNode;

  @override
  void initState() {
    super.initState();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    pin2FocusNode.dispose();
    pin3FocusNode.dispose();
    pin4FocusNode.dispose();
    super.dispose();
  }

  void goToNextField({required String value, required FocusNode focusNode}) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: getProporionateScreenWidth(60),
            child: TextFormField(
              autofocus: true,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                goToNextField(value: value, focusNode: pin2FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProporionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin2FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                goToNextField(value: value, focusNode: pin3FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProporionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin3FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                goToNextField(value: value, focusNode: pin4FocusNode);
              },
            ),
          ),
          SizedBox(
            width: getProporionateScreenWidth(60),
            child: TextFormField(
              focusNode: pin4FocusNode,
              obscureText: true,
              keyboardType: TextInputType.number,
              style: const TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
              decoration: otpInputDecoration,
              onChanged: (value) {
                pin4FocusNode.unfocus();
              },
            ),
          ),
        ],
      ),
    );
  }
}
