import 'package:flutter/material.dart';

extension CompactMap<T> on Iterable<T?> {
  Iterable<T> compactMap<E>([
    E? Function(T?)? transform,
  ]) =>
      map(
        transform ?? (e) => e,
      ).where((e) => e != null).cast();
}

/*void testIt() {
  final values = [1, 2, null, 3];
  final nonNullValues = values.compactMap((e) {
    if (e != null && e > 10) {
      return e;
    } else {
      return null;
    }
  });
}*/
