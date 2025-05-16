import 'package:custom_transitions_learning/pages/page1.dart';
import 'package:custom_transitions_learning/pages/page2.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Custom Transition Demo',
      initialRoute: 'page1',
      routes: {'page1': (context) => const Page1(), 'page2': (context) => const Page2()},
      home: Scaffold(
        appBar: AppBar(title: const Text('Material App Bar')),
        body: const Center(child: Text('Hello World')),
      ),
    );
  }
}
