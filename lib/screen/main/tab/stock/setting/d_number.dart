import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/common/widget/w_round_button.dart';
import 'package:gamel_flutter_ttoss/common/widget/w_rounded_container.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';

class NumberDialog extends DialogWidget<int> {

  NumberDialog({super.key, super.animation = NavAni.Fade, super.barrierDismissible = false});

  @override
  State<NumberDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NumberDialog> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedContainer(child: Column(
            children: [
              '숫자를 입력해 주세요'.text.color(Colors.white).make(),
              TextField(style:TextStyle(color: Colors.white),cursorColor: Colors.white, controller: controller, keyboardType: TextInputType.number,),
              RoundButton(text: '완료', onTap: () {
                final text = controller.text;
                int number = int.parse(text);
                widget.hide(number);

              })
            ],
          ))
        ],
      ),
    );
  }
}
