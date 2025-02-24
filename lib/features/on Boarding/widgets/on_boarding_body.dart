import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/features/on%20Boarding/widgets/custom_page_view.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // this is the design of the onBoarding screen
            CustomPageView(),

            // this is the skip button
            Positioned(
              top: SizeConfig.defalutSize! * 7,
              right: 32,
              child: Text(
                'Skip',
                style: TextStyle(
                  color: const Color(0xff898989),
                  fontSize: 14,
                ),
                textAlign: TextAlign.left,
                softWrap: false,
              ),
            ),

            // this is the next button
            Positioned(
                bottom: SizeConfig.defalutSize! * 7,
                left: SizeConfig.defalutSize! * 10,
                right: SizeConfig.defalutSize! * 10,
                child: CustomGeneralButton(
                  text: 'next',
                )),
          ],
        ),
      ),
    );
  }
}
