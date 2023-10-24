import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:flutter/material.dart';
import 'package:timeago/timeago.dart' as timeago;

import './vo/vo_notification.dart';

class NotificationItemWidget extends StatefulWidget {
  final TtossNotification notification;
  final VoidCallback onTab;

  const NotificationItemWidget({Key? key, required this.notification, required this.onTab})
      : super(key: key);

  @override
  State<NotificationItemWidget> createState() => _NotificationItemWidgetState();

}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  static const leftPadding = 10.0;
  static const iconWidth = 25.0;

  @override
  Widget build(BuildContext context) {
    return Tap(
      onTap: widget.onTab,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        color: widget.notification.isRead
            ? context.backgroundColor
            : context.appColors.unreadColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Width(leftPadding),
                Image.asset(
                  widget.notification.type.iconPath,
                  width: iconWidth,
                ),
                widget.notification.type.name.text
                    .size(12)
                    .color(context.appColors.leesImportant)
                    .make(),
                emptyExpanded,
                timeago
                    .format(widget.notification.time, locale: context.locale.languageCode)
                    .text
                    .size(13)
                    .color(context.appColors.leesImportant)
                    .make(),
                width10
              ],
            ),
            widget.notification.description.text
                .make()
                .pOnly(left: leftPadding + iconWidth)
          ],
        ),
      ),
    );
  }
}
