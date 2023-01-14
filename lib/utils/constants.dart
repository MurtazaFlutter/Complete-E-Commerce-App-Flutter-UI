import 'package:ecommerce_app/utils/size_config.dart';
import 'package:flutter/material.dart';

const kPrimaryColor = Color(0xFFFE7643);
const kPrimaryLightColor = Color(0xFFFFECDF);
const kPrimaryGradientColor =
    LinearGradient(begin: Alignment.topLeft, end: Alignment.topLeft, colors: [
  Color(0xFFFFA53E),
  Color(0xFFFF7643),
]);

const kSecondaryColor = Color(0xFF979797);
const kTextColor = Color(0xFF757575);

const kAnimationDuration = Duration(milliseconds: 200);

final otpInputDecoration = InputDecoration(
  contentPadding:
      EdgeInsets.symmetric(vertical: getProporionateScreenWidth(15)),
  enabledBorder: oTPBorder(),
  focusedBorder: oTPBorder(),
);

OutlineInputBorder oTPBorder() {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(15),
    borderSide: const BorderSide(color: kTextColor),
  );
}
