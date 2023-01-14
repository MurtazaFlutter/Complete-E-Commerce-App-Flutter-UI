import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:ecommerce_app/utils/constants.dart';

import '../../../utils/size_config.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String labelText;
  final bool obsecureText;
  final String hintText;
  final String iconPath;

  // ignore: prefer_typing_uninitialized_variables
  final keyboardType;

  const TextFormFieldWidget({
    required this.obsecureText,
    required this.labelText,
    required this.keyboardType,
    required this.hintText,
    required this.iconPath,
  });

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    // final form = GlobalKey<FormState>();
    // void _saveForm() {
    //   final isValid = form.currentState!.validate();
    //   if (!isValid) {
    //     return;
    //   }
    // }

    return Form(
      child: TextFormField(
        keyboardType: widget.keyboardType,
        obscureText: widget.obsecureText,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          suffixIcon: Padding(
            padding: EdgeInsets.fromLTRB(
              0,
              getProporionateScreenWidth(20),
              getProporionateScreenWidth(20),
              getProporionateScreenWidth(20),
            ),
            child: SvgPicture.asset(
              widget.iconPath,
              height: getProporionateScreenHeight(18),
            ),
          ),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 42,
            vertical: 20,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(
              color: kTextColor,
            ),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: kTextColor),
            gapPadding: 10,
          ),
        ),
      ),
    );
  }
}
