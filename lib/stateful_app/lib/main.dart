import 'package:flutter/material.dart';
import 'package:stateful_app/api.dart';
import 'package:stateful_app/api_provider.dart';
import 'package:stateful_app/home_page.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: ApiProvider(
        api: Api(),
        child: const HomePage(),
      ),
    ),
  );
}
