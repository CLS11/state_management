import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class BreadCrumb {
  BreadCrumb({
    required this.isActive,
    required this.name,
  }) : uuid = const Uuid().v4();

  bool isActive;
  final String name;
  final String uuid;

  //Function which turns the status of prior bread crumb as true
  void activate() {
    isActive = true;
  }

  @override
  bool operator ==(covariant BreadCrumb other) => uuid == other.uuid;

  @override
  int get hashCode => uuid.hashCode;

  //isActive == other.isActive && name == other.name;

  String get title => name + (isActive ? ' > ' : ' ');
}
