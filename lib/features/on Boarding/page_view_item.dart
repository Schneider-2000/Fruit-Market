import 'package:flutter/cupertino.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/space_widget.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({Key? key, this.title, this.subTitle, this.image});

  final String? title;
  final String? subTitle;
  final String? image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const VerticalSpace(19),
        SizedBox(
          height: SizeConfig.defalutSize! * 15,
          child: Image.asset(
            image!,
            height: 50,
            width: 300,
          ),
        ),
        const VerticalSpace(2),
        Text(
          title!,
          style: TextStyle(
            fontSize: 20,
            color: const Color(0xff2f2e41),
            fontWeight: FontWeight.w600,
          ),
          textAlign: TextAlign.left,
        ),
        const VerticalSpace(1.5),
        Text(
          subTitle!,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: const Color(0xff78787c),
          ),
          textAlign: TextAlign.left,
        ),
      ],
    );
  }
}
