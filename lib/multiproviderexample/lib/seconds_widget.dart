import 'package:flutter/material.dart';
import 'package:multiproviderexample/current_date&time.dart';
import 'package:provider/provider.dart';

class SecondsWidget extends StatelessWidget {
  const SecondsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final seconds = context.watch<Seconds>();
    return Expanded(
      child: Container(
        color: Colors.yellow,
        height: 100,
        child: Text(
          seconds.value,
        ),
      ),
    );
  }
}
