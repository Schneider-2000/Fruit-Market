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
      body: Stack(children: [
        AnimatedSplashScreen(
          splash: ListView(children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Image.asset(
                'assets/images/Logo.png',
                height: 400,
                width: 400,
              ),
              // const Text('Fruit Market',
              //     style: TextStyle(
              //         fontSize: 50,
              //         color: Colors.white,
              //         fontWeight: FontWeight.w900)),
            ]),
          ]),
          backgroundColor: const Color.fromARGB(0, 251, 241, 240),
          duration: 3500,
          splashTransition: SplashTransition.fadeTransition,
          splashIconSize: 500,
          nextScreen: const OnBoardingView(),
        ),
        Positioned(
          bottom: SizeConfig.defalutSize! * 2,
          left: SizeConfig.defalutSize! * 2,
          right: SizeConfig.defalutSize! * 2,
          child: Image.asset(
            'assets/images/mix_fruit.png',
            height: 200,
            width: 900,
          ),
        )
      ]),
    );
    // Scaffold(
    //     backgroundColor: kMainColor,
    //     body: AnimatedSplashScreen(
    //         duration: 3000,
    //         splash: Column(
    //           mainAxisAlignment: MainAxisAlignment.start,
    //           children: [
    //             // VerticalSpace(0),
    //             SizedBox(
    //               child: Image.asset(
    //                 kLogo,
    //               ),
    //               height: SizeConfig.defalutSize! * 30,
    //             ),
    //             Text('Fruit Market',
    //                 style: TextStyle(
    //                     fontSize: 50,
    //                     color: Colors.white,
    //                     fontWeight: FontWeight.w900)),
    //             Image.asset(
    //               'assets/images/mix_fruit.png',
    //               height: 200,
    //               width: double.infinity,
    //             ),
    //           ],
    //         ),
    //         nextScreen: OnBoardingView(),
    //         splashTransition: SplashTransition.fadeTransition,
    //         backgroundColor: Color(0xFF69A03A)));
  }
}
