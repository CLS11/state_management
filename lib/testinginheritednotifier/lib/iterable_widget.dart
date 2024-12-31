import 'package:flutter/material.dart';

extension ExpandEqually on Iterable<Widget> {
  Iterable<Widget> expandEqually() => map(
        (w) => Expanded(child: w),
      );
}
