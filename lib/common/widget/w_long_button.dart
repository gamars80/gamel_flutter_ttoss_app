import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/common/widget/w_arrow.dart';

class LongButton extends StatelessWidget {
  final String title;
  final VoidCallback? onTap;

  const LongButton({Key? key, required this.title, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        children: [
          title.text.color(Colors.white).make(),
          emptyExpanded,
          Arrow(
            color: context.appColors.leesImportant
          )
        ],
      ),
    );
  }
}
