import 'package:flutter/cupertino.dart';
import 'package:fruit_market/core/utils/size_config.dart';

class HorizintalSpace extends StatelessWidget {
  const HorizintalSpace(this.value, {super.key});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.defalutSize! * value!,
    );
  }
}

class VerticalSpace extends StatelessWidget {
  const VerticalSpace(this.value, {super.key});
  final double? value;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: SizeConfig.defalutSize! * value!,
    );
  }
}
