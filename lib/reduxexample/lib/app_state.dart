import 'package:flutter/material.dart';
import 'package:reduxexample/item_filter.dart';

@immutable
class State {
  const State({
    required this.items,
    required this.filter,
  });

  final Iterable<String> items;
  final ItemFilter filter;

  Iterable<String> get filteredItems {
    switch (filter) {
      case ItemFilter.all:
        return items;
      case ItemFilter.longTexts:
        return items.where((e) => e.length >= 10);
      case ItemFilter.shortTexts:
        return items.where((e) => e.length <= 3);
    }
  }
}
