import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_market/core/constants.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';
import 'package:fruit_market/features/Auth/presentation_layer/Pages/complete_information/complete_information_view.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        VerticalSpace(4),
        SizedBox(
          child: Image.asset(
            kLogo,
          ),
          height: SizeConfig.defalutSize! * 40,
        ),

        // the name of the app with dicoration.................................................
        // Text.rich(
        //   TextSpan(
        //     style: TextStyle(
        //       fontFamily: 'Poppins',
        //       fontSize: 51,
        //       color: const Color(0xff69a03a),
        //     ),
        //     children: [
        //       TextSpan(
        //         text: 'F',
        //         style: TextStyle(
        //           fontWeight: FontWeight.w700,
        //         ),
        //       ),
        //       TextSpan(
        //         text: 'ruit Market',
        //         style: TextStyle(
        //           fontSize: 42,
        //           fontWeight: FontWeight.w700,
        //         ),
        //       ),
        //     ],
        //   ),
        //   textHeightBehavior:
        //       TextHeightBehavior(applyHeightToFirstAscent: false),
        //   textAlign: TextAlign.left,
        // ),
        Expanded(child: SizedBox()),
        Row(
          children: [
            // this is the login with google button.............................................

            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  color: Color(0xFFdb3236),
                  iconData: FontAwesomeIcons.googlePlusG,
                  text: 'Log in with ',
                ),
              ),
            ),

            // this is the login with facebook button ............................................
            Flexible(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: CustomButtonWithIcon(
                  onTap: () {
                    Get.to(() => CompleteInformationView(),
                        duration: Duration(milliseconds: 500),
                        transition: Transition.rightToLeft);
                  },
                  color: Color(0xFF4267B2),
                  iconData: FontAwesomeIcons.facebookF,
                  text: 'Log in with ',
                ),
              ),
            )
          ],
        ),
        Expanded(child: SizedBox()),
      ],
    );
  }
}
