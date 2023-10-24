import 'package:flutter/material.dart';
import 'package:gamel_flutter_ttoss/common/common.dart';
import 'package:gamel_flutter_ttoss/screen/notification/notification_dummy.dart';
import 'package:gamel_flutter_ttoss/screen/notification/w_notification_item.dart';

import 'd_notification.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text('알림'),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => NotificationItemWidget(
                notification: notificationDummies[index],
                  onTab: () {
                    NotificationDialog([notificationDummies[0], notificationDummies[1]]).show();
                  },
              ),
              childCount: notificationDummies.length,
            ),
          )
        ],
      ),
    );
  }
}
