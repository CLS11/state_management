import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:testingflutterhooks/normalisation.dart';
import 'package:testingflutterhooks/url.dart';

class HomePage extends HookWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final opacity = useAnimationController(
      duration: const Duration(seconds: 1),
      initialValue: 1.0,
      lowerBound: 0.0,
      upperBound: 1.0,
    );
    final size = useAnimationController(
      duration: const Duration(seconds: 1),
      initialValue: 1.0,
      lowerBound: 0.0,
      upperBound: 1.0, 
    );
    final controller = useScrollController();
    useEffect(
      () {
        controller.addListener(() {
          final newOpacity = max(imageHeight - controller.offset, 0);
          final normalized = newOpacity.normalized(0.0, imageHeight).toDouble();
          opacity.value = normalized;
          size.value = normalized;
        });
        return null;
      },
      [controller],
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Column(
        children: [
          SizeTransition(
            sizeFactor: size,
            axis: Axis.vertical,
            axisAlignment: -1,
            child: FadeTransition(
              opacity: opacity,
              child: Image.network(
                url,
                height: imageHeight.toDouble(),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              controller: controller,
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Person ${index + 1}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
