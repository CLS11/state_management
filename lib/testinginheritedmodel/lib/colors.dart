//Array of all the colors which will be changed

import 'dart:math' show Random;

import 'package:flutter/material.dart';

final colors = [
  Colors.blue,
  Colors.red,
  Colors.yellow,
  Colors.orange,
  Colors.purple,
  Colors.cyan,
  Colors.brown,
  Colors.amber,
  Colors.deepPurple,
];

extension RandomElement<T> on Iterable<T> {
  T getRandomElement() => elementAt(
        Random().nextInt(length),
      );
}
