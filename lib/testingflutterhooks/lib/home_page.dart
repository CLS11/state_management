import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:testingflutterhooks/url.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    late final StreamController<double> controller;
    controller = useStreamController<double>(
      onListen: () {
        controller.sink.add(0);
      },
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: StreamBuilder<double>(
        stream: controller.stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const CircularProgressIndicator();
          } else {
            final rotation = snapshot.data ?? 0.0;
            return GestureDetector(
              onTap: () {
                controller.sink.add(
                  rotation + 10,
                );
              },
              child: RotationTransition(
                turns: AlwaysStoppedAnimation(rotation / 360),
                child: Center(
                  child: Image.network(url),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
