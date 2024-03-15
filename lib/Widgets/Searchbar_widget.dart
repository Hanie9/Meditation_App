import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class BuildSearchBar extends StatelessWidget {
  const BuildSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25.0),
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(29.5),
      ),
      child: TextField(
        textAlign: TextAlign.right,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          hintText: '... جستجو',
          hintStyle: const TextStyle(
            fontFamily: 'Iransans',
            fontSize: 10.0,
          ),
          icon: SvgPicture.asset('assets/icons/search.svg'),
          border: InputBorder.none,
        ),
      ),
    );
  }
}