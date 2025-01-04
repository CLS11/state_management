import 'package:flutter/material.dart';
import 'package:multiproviderexample/current_date&time.dart';
import 'package:provider/provider.dart';

class MinutesWidget extends StatelessWidget {
  const MinutesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final minutes = context.watch<Minutes>();
    return Expanded(
      child: Container(
        color: Colors.blue,
        height: 100,
        child: Text(
          minutes.value,
        ),
      ),
    );
  }
}
