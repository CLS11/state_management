import 'package:detailsofprovider/cheap_widget.dart';
import 'package:detailsofprovider/expensive_widget.dart';
import 'package:detailsofprovider/object_provider.dart';
import 'package:detailsofprovider/object_provider_widget.dart';
import 'package:flutter/material.dart';
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
      body: Column(
        children: [
          const Row(
            children: [
              Expanded(
                child: CheapWidget(),
              ),
              Expanded(
                child: ExpensiveWidget(),
              ),
            ],
          ),
          const Row(
            children: [
              Expanded(
                child: ObjectProviderWidget(),
              ),
            ],
          ),
          Row(
            children: [
              TextButton(
                onPressed: () {
                  context.read<ObjectProvider>().stop();
                },
                child: const Text(
                  'Stop',
                ),
              ),
              TextButton(
                onPressed: () {
                  context.read<ObjectProvider>().start();
                },
                child: const Text(
                  'Start',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
