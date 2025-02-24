import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/constants.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/features/on%20Boarding/on_boarding_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        backgroundColor: kMainColor,
        body: AnimatedSplashScreen(
            duration: 3000,
            splash: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/Logos/trans_bg.png',
                    width: 200,
                    height: 200,
                  ),
                  Text('Fruit Market',
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.white,
                          fontWeight: FontWeight.w900)),
                  Image.asset(
                    'assets/images/mix_fruit.png',
                    height: 200,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
            nextScreen: OnBoardingView(),
            splashTransition: SplashTransition.fadeTransition,
            backgroundColor: Color(0xFF69A03A)));
  }
}
