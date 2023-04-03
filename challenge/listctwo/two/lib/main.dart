//import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
//import 'rondom.dart';
import 'ronlist.dart';

void main() {
  runApp(const MyApp());
}

// #docregion MyApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // #docregion build
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Startup Name Generator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Startup Name Generator'),
        ),
        body: const Center(
          child: RandomWords(),
        ),
      ),
    );
  }
}
