import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:testingprovider/breadcrumb.dart';

class BreadCrumbWidget extends StatelessWidget {
  const BreadCrumbWidget({
    required this.breadCrumbs,
    super.key,
  });

  final UnmodifiableListView<BreadCrumb> breadCrumbs;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: breadCrumbs.map((breadCrumb) {
        return Text(
          breadCrumb.title,
          style: TextStyle(
            color: breadCrumb.isActive ? Colors.blue : Colors.black,
          ),
        );
      }).toList(),
    );
  }
}
