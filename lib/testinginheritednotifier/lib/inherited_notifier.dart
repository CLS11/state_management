import 'package:flutter/material.dart';
import 'package:testinginheritednotifier/slider_data.dart';

class SliderInheritedNotifier extends InheritedNotifier<SliderData> {
  const SliderInheritedNotifier({
    required SliderData notifier,
    required Widget child,
    super.key,
  }) : super(notifier: notifier, child: child);

  static double of(BuildContext context) {
    return context
            .dependOnInheritedWidgetOfExactType<SliderInheritedNotifier>()
            ?.notifier
            ?.value ??
        0;
  }
}
