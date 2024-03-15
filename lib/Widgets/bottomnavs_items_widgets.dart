import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/constants/constants.dart';


class BuildBottomNavItems extends StatelessWidget {
  final String svgSrc;
  final String title;
  final VoidCallback? press;
  final bool isactive;
  const BuildBottomNavItems({
    super.key, required this.svgSrc, required this.title, this.press, required this.isactive,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SvgPicture.asset(svgSrc),
        Text(
          title,
          style: TextStyle(
            color: isactive ? kActiveIconColor : kTextColor,
            fontFamily: 'Yekan Bakh',
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}