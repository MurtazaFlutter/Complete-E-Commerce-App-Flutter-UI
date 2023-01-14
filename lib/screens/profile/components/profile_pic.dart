import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          height: 115,
          width: 115,
          child: Stack(
            fit: StackFit.expand,
            children: [
              const CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/Profile Image.png',
                ),
              ),
              Positioned(
                right: -12,
                bottom: 0,
                child: Container(
                  padding: EdgeInsets.zero,
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: const Color(0xFFF5F6F9)),
                  ),
                  child: SvgPicture.asset('assets/icons/Camera Icon.svg'),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
