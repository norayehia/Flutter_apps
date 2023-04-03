import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';

class RandomWords extends StatefulWidget {
  const RandomWords({super.key});

  @override
  State<RandomWords> createState() => _RandomWordsState();
}
// #enddocregion RandomWords

// #docregion _RandomWordsState, RWS-class-only
class _RandomWordsState extends State<RandomWords> {
  // #enddocregion RWS-class-only
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return Text(wordPair.asPascalCase);
  }
  // #docregion RWS-class-only
}
