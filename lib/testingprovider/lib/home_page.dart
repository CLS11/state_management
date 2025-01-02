import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testingprovider/breadcrumb_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Column(
        children: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/new',
              );
            },
            child: const Text(
              'Add new bread crumb',
            ),
          ),
          TextButton(
            onPressed: () {
              context.read<BreadcrumbProvider>().reset();
            },
            child: const Text(
              'Reset',
            ),
          ),
        ],
      ),
    );
  }
}
