import 'package:flutter/material.dart';

String now() => DateTime.now().toIso8601String();

@immutable
class Seconds {
  Seconds() : value = now();
  final String value;
}

@immutable
class Minutes {
  Minutes() : value = now();
  final String value;
}
