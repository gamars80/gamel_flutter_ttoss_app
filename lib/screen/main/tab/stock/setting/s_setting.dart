import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/common/dart/extension/datetime_extension.dart';
import 'package:gamel_flutter_ttoss/common/widget/w_big_button.dart';
import 'package:gamel_flutter_ttoss/screen/main/tab/stock/setting/w_switch_menu.dart';
import 'package:gamel_flutter_ttoss/screen/opensource/s_opensource.dart';
import 'package:get/get.dart';

import '../../../../../common/data/preference/prefs.dart';
import 'd_number.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: '설정'.text.color(Colors.white).make(),
      ),
      body: ListView(
        children: [
          Obx(
            () => SwitchMenu(
              '푸시 설정',
              Prefs.isPushOnRx.get(),
              onChanged: (isOn) {
                Prefs.isPushOnRx.set(isOn);
              },
            ),
          ),
          Obx(
            () => Slider(
                value: Prefs.sliderPosition.get(),
                onChanged: (value) {
                  Prefs.sliderPosition.set(value);
                }),
          ),
          Obx(
            () => BigButton(
              '날짜 ${Prefs.birthday.get() == null ? "" : Prefs.birthday.get()?.formattedDate}',
              onTap: () async {
                final date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now().subtract(90.days),
                    lastDate: DateTime.now().add(90.days));

                if (date != null) {
                  Prefs.birthday.set(date);
                }
              },
            ),
          ),
          Obx(
            () => BigButton(
              '저장된 숫자 ${Prefs.number.get()}',
              onTap: () async {
                final number = await NumberDialog().show();
                if(number != null){
                  Prefs.number.set(number);
                }

              },
            ),
          ),
          BigButton('오픈소스 화면', onTap: () async {
            Nav.push(OpensourceScreen());

          }),
        ],
      ),
    );
  }
}
