import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../utils/constants.dart';
import '../../../utils/size_config.dart';
import '../../splashScreen/components/default_button.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 174,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: const Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: getProporionateScreenHeight(20),
          horizontal: getProporionateScreenWidth(20),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    height: getProporionateScreenHeight(40),
                    width: getProporionateScreenWidth(40),
                    decoration: BoxDecoration(
                      color: const Color(0xFFF5F6F9),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SvgPicture.asset('assets/icons/receipt.svg'),
                  ),
                  const Spacer(),
                  const Text('Add voucher code'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.arrow_forward_ios,
                    size: 12,
                    color: kTextColor,
                  )
                ],
              ),
              SizedBox(
                height: getProporionateScreenHeight(20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text.rich(TextSpan(text: 'Total:\n', children: [
                    TextSpan(
                        text: '\$236.15',
                        style: TextStyle(fontSize: 16, color: Colors.black))
                  ])),
                  SizedBox(
                    width: getProporionateScreenWidth(190),
                    child: DefaultButton(
                      text: 'Check Out',
                      onTap: () {},
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
