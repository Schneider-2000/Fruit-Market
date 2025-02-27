import 'package:flutter/material.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';
import 'package:fruit_market/features/Auth/presentation_layer/Pages/complete_information/widgets/complete_information_item.dart';

class CompleteInformationBody extends StatelessWidget {
  const CompleteInformationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            VerticalSpace(10),
            CompleteInfoItem(
              text: 'Enter your name',
            ),
            VerticalSpace(2),
            CompleteInfoItem(
              text: 'Enter your phone number',
            ),
            VerticalSpace(2),
            CompleteInfoItem(
              maxLines: 5,
              text: 'Enter your address',
            ),
            VerticalSpace(5),
            CustomGeneralButton(
              text: 'Login',
            )
          ],
        ),
      ),
    );
  }
}
