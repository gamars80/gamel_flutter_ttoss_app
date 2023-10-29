import 'package:gamel_flutter_ttoss/common/data/preference/item/preference_item.dart';
import '../../theme/custom_theme.dart';
import 'item/rx_preference_item.dart';
import 'item/rxn_preference_item.dart';


class Prefs {
  // static final appTheme = NullablePreferenceItem<CustomTheme>('appTheme');
  static final appTheme = PreferenceItem<CustomTheme>('appTheme', CustomTheme.light);
  static final isPushOn = PreferenceItem<bool>('isPushOn', false);
  static final isPushOnRx = RxPreferenceItem<bool, RxBool>('isPushOnRx', false);
  static final sliderPosition = RxPreferenceItem<double, RxDouble>('sliderPosition', 0.0);
  static final birthday = RxnPreferenceItem<DateTime,Rxn<DateTime>>('birthday');
  static final number = RxPreferenceItem<int, RxInt>('number', 0);

}
