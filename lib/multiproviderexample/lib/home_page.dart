import 'package:flutter/material.dart';
import 'package:multiproviderexample/current_date&time.dart';
import 'package:multiproviderexample/minutes_widget.dart';
import 'package:multiproviderexample/seconds_widget.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home Page',
        ),
      ),
      body: MultiProvider(
        providers: [
          StreamProvider.value(
            value: Stream<Seconds>.periodic(
              const Duration(seconds: 1),
              (_) => Seconds(),
            ),
            initialData: Seconds(),
          ),
          StreamProvider.value(
            value: Stream<Minutes>.periodic(
              const Duration(minutes: 1),
              (_) => Minutes(),
            ),
            initialData: Minutes(),
          ),
        ],
        child: const Column(
          children: [
            Row(
              children: [
                SecondsWidget(),
                MinutesWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
