import 'package:flutter/material.dart';
import 'package:reduxexample/item_filter.dart';

@immutable
class ChangeFilterTypeAction extends Action {
  ChangeFilterTypeAction(this.filter);

  final ItemFilter filter;
  @override
  Object? invoke(Intent intent) {
    throw UnimplementedError();
  }
}
