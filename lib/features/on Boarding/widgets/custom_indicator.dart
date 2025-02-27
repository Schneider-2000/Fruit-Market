import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:fruit_market/core/constants.dart';

class CustomIndicator extends StatelessWidget {
  const CustomIndicator({super.key, required this.dotsIndex});

  final double? dotsIndex;

  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      decorator: DotsDecorator(
          color: Colors.transparent,
          activeColor: kMainColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: kMainColor))),
      dotsCount: 3,
      position: dotsIndex!,
    );

    // deffrent way to do dots indicator using Containers.....................
    // Positioned(
    //   bottom: SizeConfig.defalutSize! * 10,
    //   left: SizeConfig.defalutSize! * 10,
    //   child: Row(
    //     children: [
    //       Container(
    //         width: SizeConfig.defalutSize! * 2,
    //         height: SizeConfig.defalutSize! * 1,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(50),
    //           color: kMainColor,
    //         ),
    //       ),
    //       SizedBox(
    //         width: SizeConfig.defalutSize! * 1,
    //       ),
    //       Container(
    //         width: SizeConfig.defalutSize! * 1,
    //         height: SizeConfig.defalutSize! * 1,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(50),
    //           color: const Color(0xffD8D8D8),
    //         ),
    //       ),
    //       SizedBox(
    //         width: SizeConfig.defalutSize! * 1,
    //       ),
    //       Container(
    //         width: SizeConfig.defalutSize! * 1,
    //         height: SizeConfig.defalutSize! * 1,
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(50),
    //           color: const Color(0xffD8D8D8),
    //         ),
    //       ),
    //     ],
    //   ),
    // ),
  }
}
