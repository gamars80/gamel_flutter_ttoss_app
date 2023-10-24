import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/screen/notification/vo/vo_notification.dart';
import 'package:gamel_flutter_ttoss/screen/notification/w_notification_item.dart';
import 'package:nav/dialog/dialog.dart';
import 'package:nav/enum/enum_nav_ani.dart';

import '../../common/common.dart';

class NotificationDialog extends DialogWidget {
  final List<TtossNotification> notifications;

  NotificationDialog(this.notifications, {super.key, super.animation = NavAni.Bottom});

  @override
  State<NotificationDialog> createState() => _NotificationDialogState();
}

class _NotificationDialogState extends DialogState<NotificationDialog> {
  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ...widget.notifications.map((element) =>
              NotificationItemWidget(notification: element, onTab: () {
                // Nav.pop(context);
                widget.hide();
              }))
              .toList()
        ],
      ),
    );
  }
}
