import 'package:flutter/material.dart';
import 'package:testinginheritednotifier/inherited_notifier.dart';
import 'package:testinginheritednotifier/iterable_widget.dart';
import 'package:testinginheritednotifier/slider_data.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home page',
        ),
      ),
      body: SliderInheritedNotifier(
        notifier: sliderData,
        child: Builder(
          builder: (context) {
            return Column(
              children: [
                Slider(
                  value: SliderInheritedNotifier.of(context),
                  onChanged: (value) {
                    sliderData.value = value;
                  },
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Opacity(
                      opacity: SliderInheritedNotifier.of(context),
                      child: Container(
                        color: Colors.yellow,
                        height: 200,
                        width: 100,
                      ),
                    ),
                    Opacity(
                      opacity: SliderInheritedNotifier.of(context),
                      child: Container(
                        color: Colors.blue,
                        height: 200,
                        width: 100,
                      ),
                    ),
                  ].expandEqually().toList(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
