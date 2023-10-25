import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/common/widget/w_arrow.dart';

class PointButton extends StatelessWidget {
  final int point;
  const PointButton({Key? key, required this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        "내 포인트".text.color(context.appColors.leesImportant).make(),
        emptyExpanded,
        "$point 원".text.color(Colors.white).bold.make(),
        width10,
        Arrow(color: context.appColors.leesImportant,),
      ],
    );
  }
}
