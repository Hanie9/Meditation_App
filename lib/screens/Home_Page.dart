import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditation/Widgets/Navbar_widget.dart';
import 'package:meditation/Widgets/Searchbar_widget.dart';
import 'package:meditation/Widgets/category_widget.dart';
import 'package:meditation/screens/meditation_screen.dart';



class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: const BuildBottomNavBar(),
      body: Stack(
        children: [
          Container(
            height: size.height * 0.45,
            decoration: const BoxDecoration(
              color: Color(0xFFF5CEB8),
              image: DecorationImage(
                alignment: Alignment.centerLeft,
                image: AssetImage('assets/images/undraw_pilates_gpdb.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      alignment: Alignment.center,
                      height: 52.0,
                      width: 52.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color.fromARGB(255, 229, 182, 156),
                      ),
                      child: SvgPicture.asset('assets/icons/menu.svg'),
                    ),
                  ),
                  Text(
                    'سارا عزیز, برای مدیتیشن\n آماده ای؟!',
                    textAlign: TextAlign.right,
                    textDirection: TextDirection.rtl,
                    style: Theme.of(context).textTheme.displaySmall?.copyWith(
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Lalezar',
                      fontSize: 30.0,
                    ),
                  ),
                  const BuildSearchBar(),
                  Expanded(
                    child: GridView.count(
                      childAspectRatio: 0.85,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.0,
                      mainAxisSpacing: 20.0,
                      children: [
                        const BuildCategoryCard(svgSrc: 'assets/icons/Hamburger.svg', title: ',رژیم پیشنهادی'),
                        const BuildCategoryCard(svgSrc: 'assets/icons/Excrecises.svg', title: 'نرمش',),
                        BuildCategoryCard(svgSrc: 'assets/icons/Meditation_women_small.svg', title: 'مدیتیشن',press: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const MeditationPage(),),),),
                        const BuildCategoryCard(svgSrc: 'assets/icons/yoga.svg', title: 'یوگا',),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}