import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/benefit/vo/vo_benefit.dart';

import '../../../../common/common.dart';

class BenefitITem extends StatelessWidget {
  final Benefit benefit;
  const BenefitITem({Key? key, required this.benefit}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(benefit.imagePath, width: 50,),
        width10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            benefit.subTitle.text.size(13).color(Colors.white).make(),
            height5,
            benefit.title.text.size(13).color(context.appColors.blueText).make()
          ],
        )
      ],
    ).pSymmetric(v:20);
  }
}
