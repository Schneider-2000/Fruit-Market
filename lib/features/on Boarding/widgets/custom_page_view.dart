import 'package:flutter/material.dart';
import 'package:fruit_market/features/on%20Boarding/page_view_item.dart';

class CustomPageView extends StatelessWidget {
  CustomPageView({super.key, required this.pageController});

  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: [
        // page view item 1
        PageViewItem(
            image: 'assets/images/page_view_item_1.png',
            title: 'E Shopping',
            subTitle: 'Explore  top organic fruits & grab them'),

        // page view item 2
        PageViewItem(
            image: 'assets/images/page_view_item_2.png',
            title: 'Delivery on the way',
            subTitle: 'Get your order by speed delivery'),

        // page view item 3
        PageViewItem(
            image: 'assets/images/page_view_item_3.png',
            title: 'Delivery Arrived',
            subTitle: 'Order is arrived at your Place'),
      ],
    );
  }
}
