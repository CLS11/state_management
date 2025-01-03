import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

@immutable
class BaseObject {
  BaseObject()
      : id = const Uuid().v4(),
        lastUpdated = DateTime.now().toIso8601String();
  final dynamic id;
  final dynamic lastUpdated;

  @override
  bool operator ==(covariant BaseObject other) => id == other.id;

  @override
  int get hashCode => id.hashCode;
}

@immutable
class ExpensiveObject extends BaseObject {}

@immutable
class CheapObject extends BaseObject {}
