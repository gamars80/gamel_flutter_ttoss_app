
import 'package:flutter/widgets.dart';
import 'package:gamel_flutter_ttoss/common/dart/extension/num_duration_extension.dart';

extension AnimationControllerExtension on AnimationController {
  void animateToTheEnd() {
    animateTo(1.0, duration: 0.ms);
  }

  void animateToTheBeginning() {
    animateTo(0, duration: 0.ms);
  }
}
