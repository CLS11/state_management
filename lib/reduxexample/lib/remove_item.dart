import 'package:flutter/material.dart';
import 'package:reduxexample/item_action.dart';

@immutable
class RemoveItemAction extends ItemAction {
  RemoveItemAction(super.item);

  @override
  Object? invoke(Intent intent) {
    throw UnimplementedError();
  }
}
