import 'package:flutter/material.dart';
import 'package:reduxexample/item_action.dart';

@immutable
class AddItemAction extends ItemAction {
  AddItemAction(super.item);

  @override
  Object? invoke(Intent intent) {
    throw UnimplementedError();
  }
}
