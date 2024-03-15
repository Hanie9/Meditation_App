import 'package:flutter/material.dart';
import 'package:meditation/Widgets/bottomnavs_items_widgets.dart';

class BuildBottomNavBar extends StatelessWidget {
  const BuildBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
      height: 80.0,
      color: Colors.white,
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BuildBottomNavItems(svgSrc: 'assets/icons/calendar.svg', title: 'امروز', isactive: false,),
          BuildBottomNavItems(svgSrc: 'assets/icons/gym.svg', title: 'تمرینات', isactive: true,),
          BuildBottomNavItems(svgSrc: 'assets/icons/Settings.svg', title: 'تنظیمات', isactive: false,),
        ],
      ),
    );
  }
}