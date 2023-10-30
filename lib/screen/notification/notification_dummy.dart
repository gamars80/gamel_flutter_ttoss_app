
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gamel_flutter_ttoss/screen/notification/vo/notification_type.dart';
import 'package:gamel_flutter_ttoss/screen/notification/vo/vo_notification.dart';

final notificationDummies = <TtossNotification>[
  TtossNotification(
    NotificationType.tosPay,
    '이번주에 영화 한편 어때요? CGV 할인 쿠폰이 도착했어요',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.stock,
    '인적 분할에 대해 알려드릴게요',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(NotificationType.walk, '1000걸음 이상 걸었다면 포인트 받으세요',
      DateTime.now().subtract(27.minutes),
      isRead: true),
  TtossNotification(
      NotificationType.moneyTip,
      '유럽식품 물가가 치솟고 있어요\n남반석님, 유렵여행 관심이 있다면 확인해보세요',
      DateTime.now().subtract(27.minutes),
      isRead: true),
  TtossNotification(
    NotificationType.walk,
    '오늘 100걸음 넘겼어 포인트 받아가',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.luck,
    '행운복권 도착',
    DateTime.now().subtract(27.minutes),
  ),
  TtossNotification(
    NotificationType.people,
    '월요일 공동구매 보러가기',
    DateTime.now().subtract(1.days),
  ),
];
