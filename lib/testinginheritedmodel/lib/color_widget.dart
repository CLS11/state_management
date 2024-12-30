import 'dart:developer' as devtools show log;
import 'package:flutter/material.dart';
import 'package:testinginheritedmodel/available_colors.dart';

class ColorWidget extends StatelessWidget {
  const ColorWidget({
    required this.color,
    super.key,
  });

  final AvailableColors color;

  @override
  Widget build(BuildContext context) {
    switch (color) {
      case AvailableColors.one:
        devtools.log('Color1 widget got rebuild.');
      case AvailableColors.two:
        devtools.log('Color2 widget got rebuild.');
    }

    final provider = AvailableColorsWidget.of(
      context,
      color,
    );

    return Container(
      height: 100,
      color: color == AvailableColors.one? provider.color1 : provider.color2, 
    );
  }
}
