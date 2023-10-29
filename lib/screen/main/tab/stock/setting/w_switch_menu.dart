import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/setting/w_os_switch.dart';

class SwitchMenu extends StatelessWidget {
  final String title;
  final bool isOn;
  final ValueChanged<bool> onChanged;

  const SwitchMenu(this.title, this.isOn, {super.key, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        title.text.color(Colors.white).bold.make(),
        emptyExpanded,
        OsSwitch(value: isOn, onChanged: onChanged),

      ],
    ).p(20);
  }
}
