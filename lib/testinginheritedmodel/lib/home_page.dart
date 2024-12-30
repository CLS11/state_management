import 'package:flutter/material.dart';
import 'package:testinginheritedmodel/available_colors.dart';
import 'package:testinginheritedmodel/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var color1 = Colors.yellow;
  var color2 = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AvailableColorsWidget(
        color1: color1,
        color2: color2,
        child: Column(
          children: [
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    setState(() {
                      color1 = colors.getRandomElement();
                    });
                  },
                  child: const Text('Change color 1'),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      color2 = colors.getRandomElement();
                    });
                  },
                  child: const Text('Change color 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
