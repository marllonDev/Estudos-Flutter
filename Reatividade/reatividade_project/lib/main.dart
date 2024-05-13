import 'package:flutter/material.dart';
import 'package:reatividade_project/pages/home_page.dart';
import 'package:reatividade_project/pages/home_page_v2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePagev2(title: 'Flutter Demo'),
    );
  }
}