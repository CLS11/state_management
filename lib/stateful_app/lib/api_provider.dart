import 'package:flutter/material.dart';
import 'package:stateful_app/api.dart';
import 'package:uuid/uuid.dart';

class ApiProvider extends InheritedWidget {
  ApiProvider({
    required this.api,
    required super.child,
    super.key,
  }) : uuid = const Uuid().v4();
  final Api api;
  final String uuid;

  @override
  bool updateShouldNotify(covariant ApiProvider oldWidget) {
    return uuid != oldWidget.uuid;
  }


  static ApiProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ApiProvider>()!;
  }
}
