import 'package:flutter/material.dart';

@immutable
abstract class ItemAction extends Action {
  ItemAction(this.item);
  final String item;
}
