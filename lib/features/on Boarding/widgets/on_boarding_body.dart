import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/features/Auth/presentation_layer/Pages/login/login_view.dart';
import 'package:fruit_market/features/on%20Boarding/widgets/custom_indicator.dart';
import 'package:fruit_market/features/on%20Boarding/widgets/custom_page_view.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class OnBoardingBody extends StatefulWidget {
  const OnBoardingBody({super.key});

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  PageController? pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            // this is the design of the onBoarding screen
            CustomPageView(
              pageController: pageController,
            ),

            // this is the dots indicator of the onBoarding screen
            Positioned(
              bottom: SizeConfig.defalutSize! * 22,
              left: 0,
              right: 0,
              child: CustomIndicator(
                dotsIndex:
                    pageController!.hasClients ? pageController?.page : 0,
              ),
            ),

            // this is the skip button
            //  using visibility widget is to hide skip word from the last page view ..............................
            Visibility(
              visible: pageController!.hasClients
                  ? pageController?.page == 2
                      ? false
                      : true
                  : true,
              child: Positioned(
                top: SizeConfig.defalutSize! * 5,
                right: 32,
                child: TextButton(
                  onPressed: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) =>
                    //     ));
                  },
                  child: Text(
                    'Skip',
                    style: TextStyle(
                      color: const Color(0xff898989),
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                    softWrap: false,
                  ),
                ),
              ),
            ),

            // this is the next button
            Positioned(
                bottom: SizeConfig.defalutSize! * 10,
                left: SizeConfig.defalutSize! * 7,
                right: SizeConfig.defalutSize! * 7,
                child: CustomGeneralButton(
                  onTap: () {
                    if (pageController!.page! < 2) {
                      pageController?.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeIn);
                    } else {
                      Get.to(
                        () => const LoginView(),
                        transition: Transition.rightToLeft,
                        duration: const Duration(milliseconds: 500),
                      );
                    }
                  },
                  text: pageController!.hasClients
                      ? (pageController?.page == 2 ? 'Get Started' : 'Next')
                      : 'Next',
                )),
          ],
        ),
      ),
    );
  }
}
