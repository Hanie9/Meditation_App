import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meditation/Widgets/Navbar_widget.dart';
import 'package:meditation/Widgets/Searchbar_widget.dart';
import 'package:meditation/Widgets/SessionCard_Widget.dart';
import 'package:meditation/constants/constants.dart';
import 'package:meditation/screens/Player_Page.dart';

class MeditationPage extends StatelessWidget {
  const MeditationPage({super.key});

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
              color: kBlueLightColor,
              image: DecorationImage(
                image: AssetImage('assets/images/meditation_bg.png'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: size.height * 0.05,
                    ),
                    const Text(
                      'مدیتیشن',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Lalezar',
                        fontSize: 30.0,
                      ),
                    ),
                    const Text(
                      ' ٢٠ دقیقه آموزش',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Lalezar',
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      'با استفاده از مدیتیشن قدرت بدنی و ذهنی خود را \nمیتوانید خیلی افزایش دهید و عمر طولانی تری\nداشته باشید',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w200,
                        fontFamily: 'Yekan Bakh',
                        fontSize: 15.0,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: SizedBox(
                        width: size.width * 0.4,
                        height: 100.0,
                        child: const BuildSearchBar(),
                      ),
                    ),
                    Wrap(
                      spacing: 20.0,
                      runSpacing: 20.0,
                      children: [
                        BuildSessionCard(
                          sessionNumber: 'ویدیو شماره ١',
                          isDone: true,
                          press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const MyVideoPlayerPage(),));
                          },
                        ),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره ٢'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره ٣'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره ٤'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره ٥'),
                        const BuildSessionCard(sessionNumber: 'ویدیو شماره ٦'),
                      ],
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    const Text(
                      'پیشنهاد ما',
                      textAlign: TextAlign.right,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Yekan Bakh',
                        fontSize: 17.0,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20.0,),
                      padding: const EdgeInsets.all(10.0),
                      height: 90.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(13.0),
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0.0, 17.0),
                            blurRadius: 23.0,
                            spreadRadius: -13.0,
                            color: kShadowColor,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SvgPicture.asset('assets/icons/Lock.svg'),
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  'یوگا پیشرفته',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Yekan Bakh',
                                    fontSize: 15.0,
                                  ),
                                ),
                                Text(
                                  'پیشرفته تر از قبل تمرین کنید',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'Yekan Bakh',
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 20.0,
                          ),
                          SvgPicture.asset('assets/icons/Meditation_women_small.svg'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}