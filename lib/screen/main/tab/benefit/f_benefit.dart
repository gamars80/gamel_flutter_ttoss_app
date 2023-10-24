import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/screen/main/s_main.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/benefit/benefits_dummy.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/benefit/w_benefit_item.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/benefit/w_point_button.dart';

class BenefitFragment extends StatefulWidget {
  const BenefitFragment({Key? key}) : super(key: key);

  @override
  State<BenefitFragment> createState() => _BenefitFragmentState();
}

class _BenefitFragmentState extends State<BenefitFragment> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.only(bottom: MainScreenState.bottomNavigatorHeight),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          height30,
          "혜택".text.white.size(18).make(),
          height30,
          const PointButton(
            point: 569,
          ),
          height20,
          "혜택 더 받기".text.white.bold.size(16).make(),

          ...benefitList.map((element) => BenefitITem(benefit: element)).toList()
        ],
      ).pSymmetric(h: 20),
    );
  }
}
