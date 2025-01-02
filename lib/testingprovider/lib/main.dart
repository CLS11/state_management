import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testingprovider/breadcrumb_provider.dart';
import 'package:testingprovider/home_page.dart';
import 'package:testingprovider/new_breadcrumb_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => BreadcrumbProvider(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
        routes: {
          '/new': (context) => const NewBreadCrumbWidget(),
        },
      ),
    );
  }
}
